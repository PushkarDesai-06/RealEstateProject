package RealEstateMaven.Classes;

public class PriceTrendClass {
    private String  neighborhood , avg_price;

    public PriceTrendClass(String avg_price, String neighborhood) {
        this.avg_price = avg_price;
        this.neighborhood = neighborhood;
    }

    public String getAvg_price() {
        return avg_price;
    }

    public void setAvg_price(String avg_price) {
        this.avg_price = avg_price;
    }

    public String getNeighborhood() {
        return neighborhood;
    }

    public void setNeighborhood(String neighborhood) {
        this.neighborhood = neighborhood;
    }

    @Override
    public String toString() {
        return "PriceTrendClass{" +
                "neighborhood='" + neighborhood + '\'' +
                ", avg_price='" + avg_price + '\'' +
                '}';
    }
}
