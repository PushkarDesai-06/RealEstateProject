package RealEstateMaven;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import RealEstateMaven.Classes.*;
import RealEstateMaven.Queries.SqlQueries;
import io.github.cdimascio.dotenv.Dotenv;

public class client {
  final static Dotenv dotenv = Dotenv.load();

  static String db_url = dotenv.get("DB_URL");
  static String db_user = dotenv.get("DB_USER");
  static String db_pass = dotenv.get("DB_PASSWORD");

  public static void main(String[] args) throws RuntimeException {
    if(db_url == null || db_user == null || db_pass == null){
      System.out.println("Check your .env file");
      return;
    }

    ArrayList<ActiveListingsClass> list = getActiveListings("Downtown" , "apartment");
    for (ActiveListingsClass var : list) {
      System.out.println(var.toString());
    }

    System.exit(0);

  }

  public static Connection getConnection(String db_url, String db_username, String db_pass) throws RuntimeException {

    try {

      // Class.forName("com.mysql.cj.jdbc.Driver");
      return DriverManager.getConnection(db_url, db_username, db_pass);
    } catch (Exception e) {
      System.out.println("Error : \n" + e.getMessage());
      throw new RuntimeException("Database Connection failed", e);
    }
  }

  //? Functions for Requirements

  // 1. Inquiry Response Time metrics per agent

  public static ArrayList<ResponseTimeMetricsClass> getResponseTimeMetrics() throws RuntimeException {
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

  public static ArrayList<ActiveListingsClass> getActiveListings(String neighbourhood, String type)
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

  public static AvgTimeOnMarketClass getAvgTimeOnMarket() throws RuntimeException {

    String query = SqlQueries.GET_AVG_TIME_ON_MARKET;
    try (

        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {

      try (ResultSet rs = pst.executeQuery();) {

        int avgTime = 0;
        while (rs.next()) {
          avgTime = rs.getInt("avg_time_on_market");
        }
        AvgTimeOnMarketClass at = new AvgTimeOnMarketClass(avgTime);
        return at;
      }

    } catch (SQLException e) {
      throw new RuntimeException("Failed Fetching", e);
    }

  }

  // 4. Price trend analysis for a region

  public static ArrayList<PriceTrendClass> getPriceTrend() throws RuntimeException {
    String query = SqlQueries.GET_PRICE_TREND;
    ArrayList<PriceTrendClass> list = new ArrayList<>();
    try (

        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {

      try (ResultSet rs = pst.executeQuery();) {

        String avg_price;
        String neighborhood;
        while (rs.next()) {
          list.add(new PriceTrendClass(
                  rs.getString("avg_price") , rs.getString("neighborhood")
          ));
        }
        return list;
      }

    } catch (SQLException e) {
      throw new RuntimeException("Failed Fetching", e);
    }

  }

  // 5. Inquiries per property last month

  public static ArrayList<InqPerPropLastMonthClass> getInquriesPerPropertiesLastMonth() throws RuntimeException {
    ArrayList<InqPerPropLastMonthClass> res = new ArrayList<>();
    String query = SqlQueries.GET_INQUIRIES_PER_PROPERTY_LAST_MONTH;
    try (

        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {

      try (ResultSet rs = pst.executeQuery();) {

        int avgTime = 0;
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

  public static ArrayList<OffersPendingAcceptanceClass> getOffersPendingAcceptance() throws RuntimeException {
    ArrayList<OffersPendingAcceptanceClass> res = new ArrayList<>();
    String query = SqlQueries.GET_OFFERS_PENDING_ACCEPTANCE;
    try (

        Connection conn = getConnection(db_url, db_user, db_pass);
        PreparedStatement pst = conn.prepareStatement(query);) {

      try (ResultSet rs = pst.executeQuery();) {

        int avgTime = 0;
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

}
