# Real Estate Management Platform

A comprehensive Java-based real estate management system with MySQL database integration for managing properties, agents, buyers, and market analytics.

## 🏠 Features

### Core Analytics & Reporting
- **Response Time Metrics**: Track agent inquiry response times and performance
- **Active Listings Management**: View and filter listings by neighborhood and property type
- **Market Analytics**: Calculate average time on market for properties
- **Price Trend Analysis**: Monitor regional price trends and market dynamics
- **Inquiry Tracking**: Track property inquiries from the last month
- **Offer Management**: Monitor pending offer acceptances
- **Agent Performance**: Analyze agent performance based on closed deals

### Database Operations
- MySQL database connectivity with connection pooling
- Prepared statements for secure SQL operations
- Environment-based configuration management
- Comprehensive error handling and logging

## 🛠️ Prerequisites

- **Java**: Java 17 or higher
- **Database**: MySQL 8.0 or higher
- **Build Tool**: Maven 3.6 or higher
- **IDE**: IntelliJ IDEA, Eclipse, or VS Code (recommended)

## 📦 Dependencies

- **MySQL Connector/J**: Database connectivity
- **dotenv-java**: Environment variable management for secure configuration

## 🚀 Setup Instructions

### 1. Clone the Repository
```bash
git clone https://github.com/PushkarDesai-06/RealEstateProject.git
cd RealEstateProject
```

### 2. Database Setup
1. Create a MySQL database for the project
2. Set up the required tables (properties, agents, buyers, inquiries, offers, etc.)
3. Populate with sample data if needed

### 3. Environment Configuration
Create a `.env` file in the project root directory:
```env
DB_URL=jdbc:mysql://localhost:3306/your_database_name
DB_USER=your_username
DB_PASSWORD=your_password
```

### 4. Build the Project
```bash
mvn clean compile
```

### 5. Run the Application
```bash
mvn exec:java -Dexec.mainClass="RealEstateMaven.client"
```

## 📋 Available Operations

### 1. Response Time Metrics
```java
ArrayList<ResponseTimeMetricsClass> metrics = client.getResponseTimeMetrics();
```
Retrieves agent response time statistics for performance evaluation.

### 2. Active Listings Query
```java
ArrayList<ActiveListingsClass> listings = client.getActiveListings("Downtown", "Apartment");
```
Filters active property listings by neighborhood and property type.

### 3. Market Time Analysis
```java
AvgTimeOnMarketClass avgTime = client.getAvgTimeOnMarket();
```
Calculates the average time properties spend on the market.

### 4. Price Trend Analysis
```java
ArrayList<PriceTrendClass> trends = client.getPriceTrend();
```
Analyzes price trends across different regions and neighborhoods.

### 5. Recent Inquiries
```java
ArrayList<InqPerPropLastMonthClass> inquiries = client.getInquiriesPerPropertiesLastMonth();
```
Retrieves property inquiries from the last month for follow-up.

### 6. Pending Offers
```java
ArrayList<OffersPendingAcceptanceClass> offers = client.getOffersPendingAcceptance();
```
Lists all offers that are pending acceptance.

### 7. Agent Performance
```java
ArrayList<AgentPerformanceClass> performance = client.getAgentPerformanceByClosedDeals();
```
Evaluates agent performance based on successfully closed deals.

## 🏗️ Project Structure

```
RealEstateProject/
├── src/
│   └── main/
│       └── java/
│           └── RealEstateMaven/
│               ├── client.java              # Main application entry point
│               ├── Classes/                 # Data model classes
│               │   ├── ActiveListingsClass.java
│               │   ├── AgentPerformanceClass.java
│               │   ├── AvgTimeOnMarketClass.java
│               │   ├── InqPerPropLastMonthClass.java
│               │   ├── OffersPendingAcceptanceClass.java
│               │   ├── PriceTrendClass.java
│               │   └── ResponseTimeMetricsClass.java
│               └── Queries/
│                   └── SqlQueries.java      # SQL query definitions
├── pom.xml                                  # Maven configuration
└── README.md                               # This file
```

## 🔧 Configuration

### Database Configuration
The application uses environment variables for database configuration:
- `DB_URL`: JDBC connection URL
- `DB_USER`: Database username
- `DB_PASSWORD`: Database password

### Error Handling
The application includes comprehensive error handling for:
- Database connection failures
- SQL execution errors
- Missing environment variables
- Data validation issues

## 🚦 Usage Examples

### Basic Usage
```java
public class Example {
    public static void main(String[] args) {
        // Get agent performance data
        ArrayList<AgentPerformanceClass> agents = client.getAgentPerformanceByClosedDeals();
        for (AgentPerformanceClass agent : agents) {
            System.out.println(agent.toString());
        }
        
        // Get active listings in specific area
        ArrayList<ActiveListingsClass> listings = client.getActiveListings("Downtown", "House");
        listings.forEach(System.out::println);
    }
}
```
---

**Note**: Make sure to configure your `.env` file properly before running the application. The system requires valid database credentials to function correctly.
