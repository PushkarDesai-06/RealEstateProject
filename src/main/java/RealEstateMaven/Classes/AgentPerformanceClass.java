package RealEstateMaven.Classes;

public class AgentPerformanceClass {

    private String id,name,phone_number;
    private int properties_sold;

    public AgentPerformanceClass(String id, String name, String phone_number, int properties_sold) {
        this.id = id;
        this.name = name;
        this.phone_number = phone_number;
        this.properties_sold = properties_sold;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPhone_number() {
        return phone_number;
    }

    public void setPhone_number(String phone_number) {
        this.phone_number = phone_number;
    }

    public int getProperties_sold() {
        return properties_sold;
    }

    public void setProperties_sold(int properties_sold) {
        this.properties_sold = properties_sold;
    }

    @Override
    public String toString() {
        return "AgentPerformanceClass{" +
                "id='" + id + '\'' +
                ", name='" + name + '\'' +
                ", phone_number='" + phone_number + '\'' +
                ", properties_sold=" + properties_sold +
                '}';
    }
}
