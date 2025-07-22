package RealEstateMaven.Classes;

public class InqPerPropLastMonthClass {
  private String buyer_email, agent_name, property_title, neighborhood, message, status, created_at;

  public InqPerPropLastMonthClass(String buyer_email, String agent_name, String property_title, String neighborhood,
      String message, String status, String created_at) {
    this.buyer_email = buyer_email;
    this.agent_name = agent_name;
    this.property_title = property_title;
    this.neighborhood = neighborhood;
    this.message = message;
    this.status = status;
    this.created_at = created_at;
  }

  public String getBuyer_email() {
    return buyer_email;
  }

  public void setBuyer_email(String buyer_email) {
    this.buyer_email = buyer_email;
  }

  public String getAgent_name() {
    return agent_name;
  }

  public void setAgent_name(String agent_name) {
    this.agent_name = agent_name;
  }

  public String getProperty_title() {
    return property_title;
  }

  public void setProperty_title(String property_title) {
    this.property_title = property_title;
  }

  public String getNeighborhood() {
    return neighborhood;
  }

  public void setNeighborhood(String neighborhood) {
    this.neighborhood = neighborhood;
  }

  public String getMessage() {
    return message;
  }

  public void setMessage(String message) {
    this.message = message;
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

}
