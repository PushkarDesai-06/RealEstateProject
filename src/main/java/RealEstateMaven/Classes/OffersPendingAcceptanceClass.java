package RealEstateMaven.Classes;

public class OffersPendingAcceptanceClass {
  String id, buyer_id, agent_id, property_id, status, created_at, final_date;
  int price;
  boolean offered_by_buyer;

  public OffersPendingAcceptanceClass(String id, String buyer_id, String agent_id, String property_id, String status,
      String created_at, String final_date, int price, boolean offered_by_buyer) {
    this.id = id;
    this.buyer_id = buyer_id;
    this.agent_id = agent_id;
    this.property_id = property_id;
    this.status = status;
    this.created_at = created_at;
    this.final_date = final_date;
    this.price = price;
    this.offered_by_buyer = offered_by_buyer;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getBuyer_id() {
    return buyer_id;
  }

  public void setBuyer_id(String buyer_id) {
    this.buyer_id = buyer_id;
  }

  public String getAgent_id() {
    return agent_id;
  }

  public void setAgent_id(String agent_id) {
    this.agent_id = agent_id;
  }

  public String getProperty_id() {
    return property_id;
  }

  public void setProperty_id(String property_id) {
    this.property_id = property_id;
  }

  public String getStatus() {
    return status;
  }

  public void setStatus(String status) {
    this.status = status;
  }

  public String getCreated_at() {
    return created_at;
  }

  public void setCreated_at(String created_at) {
    this.created_at = created_at;
  }

  public String getFinal_date() {
    return final_date;
  }

  public void setFinal_date(String final_date) {
    this.final_date = final_date;
  }

  public int getPrice() {
    return price;
  }

  public void setPrice(int price) {
    this.price = price;
  }

  public boolean isOffered_by_buyer() {
    return offered_by_buyer;
  }

  public void setOffered_by_buyer(boolean offered_by_buyer) {
    this.offered_by_buyer = offered_by_buyer;
  }

}
