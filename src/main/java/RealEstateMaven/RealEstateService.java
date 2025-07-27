package RealEstateMaven;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import RealEstateMaven.Classes.*;
import RealEstateMaven.Queries.SqlQueries;

public class RealEstateService {

  public static Connection getConnection(String db_url, String db_username, String db_pass) throws RuntimeException {
    try {
      return DriverManager.getConnection(db_url, db_username, db_pass);
    } catch (Exception e) {
      System.out.println("Error : \n" + e.getMessage());
      throw new RuntimeException("Database Connection failed", e);
    }
  }

  // Functions for Requirements

  // 1. Inquiry Response Time metrics per agent
  public static ArrayList<ResponseTimeMetricsClass> getResponseTimeMetrics(String db_url, String db_user, String db_pass) throws RuntimeException {
    ArrayList<ResponseTimeMetricsClass> res = new ArrayList<>();
    String query = SqlQueries.GET_RESPONSE_TIME_METRICS;
    try (
        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {
      try (ResultSet rs = pst.executeQuery()) {
        while (rs.next()) {
          res.add(new ResponseTimeMetricsClass(
              rs.getString("id"),
              rs.getString("name"),
              rs.getString("avgTime")
          ));
        }
        return res;
      }
    } catch (SQLException e) {
      throw new RuntimeException("Error Fetching", e);
    }
  }

  // 2. Active listings by neighborhood and property type.
  public static ArrayList<ActiveListingsClass> getActiveListings(String neighbourhood, String type, String db_url, String db_user, String db_pass)
      throws RuntimeException {
    ArrayList<ActiveListingsClass> res = new ArrayList<>();
    String query = SqlQueries.GET_ACTIVE_LISTINGS;
    try (
        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);
    ) {
      pst.setString(1, neighbourhood);
      pst.setString(2, type);

      try (ResultSet rs = pst.executeQuery()) {
        while (rs.next()) {
          res.add(new ActiveListingsClass(
              rs.getString("id"),
              rs.getString("neighborhood"),
              rs.getString("title"),
              rs.getString("description"),
              rs.getString("type"),
              rs.getString("created_at"),
              rs.getString("listing_price"),
              rs.getString("address")));
        }
      }
      return res;
    } catch (SQLException e) {
      throw new RuntimeException("Error Fetching", e);
    }
  }

  // 3. Avg time on market
  public static AvgTimeOnMarketClass getAvgTimeOnMarket(String db_url, String db_user, String db_pass) throws RuntimeException {
    String query = SqlQueries.GET_AVG_TIME_ON_MARKET;
    try (
        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {
      try (ResultSet rs = pst.executeQuery();) {
        int avgTime = 0;
        while (rs.next()) {
          avgTime = rs.getInt("avg_time_on_market");
        }
        return new AvgTimeOnMarketClass(avgTime);
      }
    } catch (SQLException e) {
      throw new RuntimeException("Failed Fetching", e);
    }
  }

  // 4. Price trend analysis for a region
  public static ArrayList<PriceTrendClass> getPriceTrend(String db_url, String db_user, String db_pass) throws RuntimeException {
    String query = SqlQueries.GET_PRICE_TREND;
    ArrayList<PriceTrendClass> list = new ArrayList<>();
    try (
        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {
      try (ResultSet rs = pst.executeQuery();) {
        while (rs.next()) {
          list.add(new PriceTrendClass(
                  rs.getString("avg_price"),
                  rs.getString("neighborhood")
          ));
        }
        return list;
      }
    } catch (SQLException e) {
      throw new RuntimeException("Failed Fetching", e);
    }
  }

  // 5. Inquiries per property last month
  public static ArrayList<InqPerPropLastMonthClass> getInquiriesPerPropertiesLastMonth(String db_url, String db_user, String db_pass) throws RuntimeException {
    ArrayList<InqPerPropLastMonthClass> res = new ArrayList<>();
    String query = SqlQueries.GET_INQUIRIES_PER_PROPERTY_LAST_MONTH;
    try (
        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {
      try (ResultSet rs = pst.executeQuery();) {
        while (rs.next()) {
          res.add(
              new InqPerPropLastMonthClass(
                  rs.getString("buyer_email"),
                  rs.getString("agent_name"),
                  rs.getString("property_title"),
                  rs.getString("neighborhood"),
                  rs.getString("message"),
                  rs.getString("status"),
                  rs.getString("created_at")));
        }
        return res;
      }
    } catch (SQLException e) {
      throw new RuntimeException("Failed Fetching", e);
    }
  }

  // 6. Offers pending acceptance.
  public static ArrayList<OffersPendingAcceptanceClass> getOffersPendingAcceptance(String db_url, String db_user, String db_pass) throws RuntimeException {
    ArrayList<OffersPendingAcceptanceClass> res = new ArrayList<>();
    String query = SqlQueries.GET_OFFERS_PENDING_ACCEPTANCE;
    try (
        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {
      try (ResultSet rs = pst.executeQuery();) {
        while (rs.next()) {
          res.add(
              new OffersPendingAcceptanceClass(
                  rs.getString("id"),
                  rs.getString("buyer_id"),
                  rs.getString("agent_id"),
                  rs.getString("property_id"),
                  rs.getString("status"),
                  rs.getString("created_at"),
                  rs.getString("final_date"),
                  rs.getInt("price"),
                  rs.getBoolean("offered_by_buyer")));
        }
        return res;
      }
    } catch (SQLException e) {
      throw new RuntimeException("Failed Fetching", e);
    }
  }

  // 7. Agent performance by closed deals
  public static ArrayList<AgentPerformanceClass> getAgentPerformanceByClosedDeals(String db_url, String db_user, String db_pass) throws RuntimeException {
    ArrayList<AgentPerformanceClass> res = new ArrayList<>();
    String query = SqlQueries.GET_AGENT_PERFORMANCE_BY_CLOSED_DEALS;
    try(
      Connection conn = getConnection(db_url, db_user, db_pass);
      PreparedStatement pst = conn.prepareStatement(query);
      ){
      try(ResultSet rs = pst.executeQuery()){
        while(rs.next()){
          res.add(new AgentPerformanceClass(
              rs.getString("id"),
              rs.getString("name"),
              rs.getString("phone_number"),
              rs.getInt("properties_sold")
          ));
        }
      }
    }catch (SQLException e){
      throw new RuntimeException("Failed Fetching", e);
    }
      return res;
  }
}