package RealEstateMaven.Classes;

public class ResponseTimeMetricsClass {

  private String agent_id;
  private String agent_name;
  private String avg_res_time;


  public String getAgent_id() {
    return agent_id;
  }


  public void setAgent_id(String agent_id) {
    this.agent_id = agent_id;
  }


  public String getAgent_name() {
    return agent_name;
  }


  public void setAgent_name(String agent_name) {
    this.agent_name = agent_name;
  }


  public String getAvg_res_time() {
    return avg_res_time;
  }


  public void setAvg_res_time(String avg_res_time) {
    this.avg_res_time = avg_res_time;
  }


  public ResponseTimeMetricsClass(String agent_id , String agent_name , String avg_res_time){
    this.agent_id = agent_id;
    this.agent_name = agent_name;
    this.avg_res_time = avg_res_time;
  }

}