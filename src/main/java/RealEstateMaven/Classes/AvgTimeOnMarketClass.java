package RealEstateMaven.Classes;

public class AvgTimeOnMarketClass {
  private int avg_time_on_market;

  public AvgTimeOnMarketClass(int avg_time_on_market) {
    this.avg_time_on_market = avg_time_on_market;
  }

  public int getAvg_time_on_market() {
    return avg_time_on_market;
  }

  public void setAvg_time_on_market(int avg_time_on_market) {
    this.avg_time_on_market = avg_time_on_market;
  }

  @Override
  public String toString() {
    return "AvgTimeOnMarketClass [avg_time_on_market=" + avg_time_on_market + ", getAvg_time_on_market()="
        + getAvg_time_on_market() + ", getClass()=" + getClass() + ", hashCode()=" + hashCode() + ", toString()="
        + super.toString() + "]";
  }

}
