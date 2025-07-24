package RealEstateMaven.Queries;

public final class SqlQueries {
  public static final String GET_RESPONSE_TIME_METRICS = """
      SELECT
        agent_id id,
        name,
        ROUND(AVG(TIMESTAMPDIFF(MINUTE, created_at,responded_at)),2) avgTime
      FROM
        inquiries I
      LEFT JOIN
        agents a
      ON
        i.agent_id = a.id
      GROUP BY
        agent_id
      ORDER BY
        name;
      """;

  public static final String GET_ACTIVE_LISTINGS = """
      SELECT *
      FROM
        properties
      WHERE
        neighborhood = ? AND type= ? AND sold_date IS NULL;
      """;

  public static final String GET_AVG_TIME_ON_MARKET = """
      SELECT AVG(timestampdiff(Minute , created_at , sold_date)) avg_time_on_market
      FROM properties;
      """;

  public static final String GET_PRICE_TREND = """
      SELECT
        neighborhood,
        ROUND(AVG(listing_price) , 2) avg_price
      FROM properties
      GROUP BY neighborhood;
      """;

  public static final String GET_INQUIRIES_PER_PROPERTY_LAST_MONTH = """
      SELECT
      	b.email buyer_email,
          a.name agent_name,
          p.title property_title,
          p.neighborhood neighborhood,
          message,
          i.status,
          i.created_at
      FROM
      	inquiries i
      JOIN agents a
      ON a.id = i.agent_id
      JOIN buyers b
      ON i.buyer_id = b.id
      JOIN properties p
      ON i.property_id = p.id
      WHERE
      	i.created_at BETWEEN now() - INTERVAL 30 DAY AND now()
      ORDER BY property_title;
      """;

  public static final String GET_OFFERS_PENDING_ACCEPTANCE = """
      SELECT
      	*
      FROM
      	offers
      WHERE
      	status = 'pending_acceptance';
      """;

    public static final String GET_AGENT_PERFORMANCE_BY_CLOSED_DEALS = """
      SELECT
        id,
        name,
        phone_number,
        properties_sold
      FROM
        agents;
      """;
}
