# Real Estate Platform

A Java-based real estate management system with MySQL database integration for managing properties, agents, buyers, and market analytics.

## Features

- **Response Time Metrics**: Track agent inquiry response times
- **Active Listings**: View listings by neighborhood and property type
- **Market Analytics**: Average time on market calculations
- **Price Trend Analysis**: Regional price trend monitoring
- **Inquiry Management**: Track property inquiries from last month
- **Offer Management**: Monitor pending offer acceptances

## Prerequisites

- Java 17 or higher
- MySQL Database
- Maven (for dependency management)
- IDE (IntelliJ IDEA, Eclipse, or VS Code recommended)

## Dependencies

- MySQL Connector/J
- dotenv-java for environment variable management

## Setup

1. **Clone the repository**

   ```bash
   git clone https://github.com/PushkarDesai-06/RealEstateProject.git
   cd RealEstateProject
   ```

2. **Database Setup**

   - Create a MySQL database
   - Run the provided SQL schema files
   - Ensure proper tables are created for properties, agents, buyers, inquiries, and offers

3. **Environment Configuration**
   Create a `.env` file in the root directory:

   ```
   DB_URL=jdbc:mysql://localhost:3306/your_database_name
   DB_USER=your_username
   DB_PASSWORD=your_password
   ```

4. **Install Dependencies**
   ```bash
   mvn install
   ```

## Project Structure

```
RealEstatePlatform/
├── src/
│   └── java/
│       ├── client.java              # Main client class
│       ├── Classes/                 # Data model classes
│       └── Queries/
│           └── SqlQueries.java      # SQL query definitions
├── .env                            # Environment variables
└── README.md
```

## RUN COMMAND

```bash
mvn compile exec:java -Dexec.mainClass="RealEstatePlatform.client"
```

Alternative using JAR:

```bash
mvn package
java -jar target/realestate-platform-1.0.jar
```

## Available Functions

1. **getResponseTimeMetrics()** - Get inquiry response time metrics per agent
2. **getActiveListings(neighborhood, type)** - Retrieve active listings by area and property type
3. **getAvgTimeOnMarket()** - Calculate average time properties stay on market
4. **getPriceTrend(neighborhood)** - Analyze price trends for specific regions
5. **getInquriesPerPropertiesLastMonth()** - Get inquiries from the last month
6. **getOffersPendingAcceptance()** - View all pending offers

## Database Schema Requirements

Ensure your database includes tables for:

- Properties (id, title, description, type, neighborhood, listing_price, address, created_at)
- Agents (id, name)
- Buyers (id, email)
- Inquiries (buyer_email, agent_name, property_title, message, status, created_at)
- Offers (id, buyer_id, agent_id, property_id, status, price, offered_by_buyer, created_at, final_date)

## Usage Example

```java
// Get response time metrics
ArrayList<ResponseTimeMetricsClass> metrics = client.getResponseTimeMetrics();

// Get active listings for downtown condos
ArrayList<ActiveListingsClass> listings = client.getActiveListings("Downtown", "Condo");

// Get average market time
AvgTimeOnMarketClass avgTime = client.getAvgTimeOnMarket();
```
