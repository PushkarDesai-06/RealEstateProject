package RealEstateMaven;

import java.util.ArrayList;
import RealEstateMaven.Classes.*;
import io.github.cdimascio.dotenv.Dotenv;

public class ClientApp {
  final static Dotenv dotenv = Dotenv.load();

  static String db_url = dotenv.get("DB_URL");
  static String db_user = dotenv.get("DB_USER");
  static String db_pass = dotenv.get("DB_PASSWORD");

  public static void main(String[] args) throws RuntimeException {
    if(db_url == null || db_user == null || db_pass == null){
      System.out.println("Check your .env file");
      return;
    }

    ArrayList<AgentPerformanceClass> list = RealEstateService.getAgentPerformanceByClosedDeals(db_url, db_user, db_pass);
    for (AgentPerformanceClass var : list) {
      System.out.println(var.toString());
    }

    System.exit(0);
  }
}