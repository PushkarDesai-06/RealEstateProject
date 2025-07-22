package RealEstateMaven.Classes;

public class ActiveListingsClass {

  private String id, neighbourhood, title, description, type, created_at, listing_price, address;

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  public String getNeighbourhood() {
    return neighbourhood;
  }

  public void setNeighbourhood(String neighbourhood) {
    this.neighbourhood = neighbourhood;
  }

  public String getTitle() {
    return title;
  }

  public void setTitle(String title) {
    this.title = title;
  }

  public String getDescription() {
    return description;
  }

  public void setDescription(String description) {
    this.description = description;
  }

  public String getType() {
    return type;
  }

  public void setType(String type) {
    this.type = type;
  }

  public String getCreated_at() {
    return created_at;
  }

  public void setCreated_at(String created_at) {
    this.created_at = created_at;
  }

  public String getListing_price() {
    return listing_price;
  }

  public void setListing_price(String listing_price) {
    this.listing_price = listing_price;
  }

  public String getAddress() {
    return address;
  }

  public void setAddress(String address) {
    this.address = address;
  }

  public ActiveListingsClass(String id, String neighbourhood, String title, String description,
      String type, String created_at, String listing_price, String address) {
    this.id = id;
    this.neighbourhood = neighbourhood;
    this.title = title;
    this.description = description;
    this.type = type;
    this.created_at = created_at;
    this.listing_price = listing_price;
    this.address = address;
  }

  @Override
  public String toString() {
    return "ActiveListingsClass [id=" + id + ", neighbourhood=" + neighbourhood + ", title=" + title
        + ", description=" + description + ", type=" + type + ", created_at=" + created_at + ", listing_price="
        + listing_price + ", address=" + address + "]";
  }

}
