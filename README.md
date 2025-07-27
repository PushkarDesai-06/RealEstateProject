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

### Technical Features
- **Service Layer Architecture**: Clean separation with `RealEstateService` for database operations
- **MySQL Integration**: Robust database connectivity with connection pooling
- **Prepared Statements**: Secure SQL operations preventing injection attacks
- **Environment Configuration**: Secure credential management using `.env` files
- **Comprehensive Error Handling**: Detailed exception handling and logging
- **Data Models**: Well-structured POJOs for all business entities

## 🛠️ Prerequisites

- **Java**: Java 17 or higher
- **Database**: MySQL 8.0 or higher
- **Build Tool**: Maven 3.6 or higher

## 📦 Dependencies

- **MySQL Connector/J**: Database connectivity (v8.0.33)
- **dotenv-java**: Environment variable management for secure configuration (v3.0.0)

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
mvn exec:java -Dexec.mainClass="RealEstateMaven.ClientApp"
```

## 📋 Available Operations

### 1. Response Time Metrics
```java
ArrayList<ResponseTimeMetricsClass> metrics = RealEstateService.getResponseTimeMetrics(db_url, db_user, db_pass);
```
Retrieves agent response time statistics for performance evaluation.

### 2. Active Listings Query
```java
ArrayList<ActiveListingsClass> listings = RealEstateService.getActiveListings("Downtown", "Apartment", db_url, db_user, db_pass);
```
Filters active property listings by neighborhood and property type.

### 3. Market Time Analysis
```java
AvgTimeOnMarketClass avgTime = RealEstateService.getAvgTimeOnMarket(db_url, db_user, db_pass);
```
Calculates the average time properties spend on the market.

### 4. Price Trend Analysis
```java
ArrayList<PriceTrendClass> trends = RealEstateService.getPriceTrend(db_url, db_user, db_pass);
```
Analyzes price trends across different regions and neighborhoods.

### 5. Recent Inquiries
```java
ArrayList<InqPerPropLastMonthClass> inquiries = RealEstateService.getInquiriesPerPropertiesLastMonth(db_url, db_user, db_pass);
```
Retrieves property inquiries from the last month for follow-up.

### 6. Pending Offers
```java
ArrayList<OffersPendingAcceptanceClass> offers = RealEstateService.getOffersPendingAcceptance(db_url, db_user, db_pass);
```
Lists all offers that are pending acceptance.

### 7. Agent Performance
```java
ArrayList<AgentPerformanceClass> performance = RealEstateService.getAgentPerformanceByClosedDeals(db_url, db_user, db_pass);
```
Evaluates agent performance based on successfully closed deals.

## 🏗️ Project Architecture

```
RealEstateProject/
├── src/
│   └── main/
│       └── java/
│           └── RealEstateMaven/
│               ├── ClientApp.java           # Testing and example usage
│               ├── RealEstateService.java   # Service layer for database operations
│               ├── Classes/                 # Data model classes (POJOs)
│               │   ├── ActiveListingsClass.java
│               │   ├── AgentPerformanceClass.java
│               │   ├── AvgTimeOnMarketClass.java
│               │   ├── InqPerPropLastMonthClass.java
│               │   ├── OffersPendingAcceptanceClass.java
│               │   ├── PriceTrendClass.java
│               │   └── ResponseTimeMetricsClass.java
│               └── Queries/
│                   └── SqlQueries.java      # SQL query definitions
├── target/                                  # Compiled classes and JAR
├── pom.xml                                  # Maven configuration
├── .env                                     # Environment variables (create this)
├── RealEstatePlatformSchema.png            # Database schema diagram
└── README.md                               
```

## 🔧 Configuration

### Database Configuration
The application uses environment variables for database configuration:
- `DB_URL`: JDBC connection URL (e.g., `jdbc:mysql://localhost:3306/realestate`)
- `DB_USER`: Database username
- `DB_PASSWORD`: Database password

### Service Layer
The `RealEstateService` class provides static methods for all database operations:
- Connection management with automatic resource cleanup
- Prepared statement usage for security
- Comprehensive error handling with custom exceptions
- Result set mapping to appropriate data model classes

### Error Handling
The application includes comprehensive error handling for:
- Database connection failures
- SQL execution errors
- Missing environment variables
- Data validation issues
- Resource cleanup and connection management

## 🚦 Usage Examples

### Basic Usage
```java
public class Example {
    public static void main(String[] args) {
        // Load environment variables
        Dotenv dotenv = Dotenv.load();
        String db_url = dotenv.get("DB_URL");
        String db_user = dotenv.get("DB_USER");
        String db_pass = dotenv.get("DB_PASSWORD");
        
        // Get agent performance data
        ArrayList<AgentPerformanceClass> agents = RealEstateService.getAgentPerformanceByClosedDeals(db_url, db_user, db_pass);
        for (AgentPerformanceClass agent : agents) {
            System.out.println(agent.toString());
        }
        
        // Get active listings in specific area
        ArrayList<ActiveListingsClass> listings = RealEstateService.getActiveListings("Downtown", "House", db_url, db_user, db_pass);
        listings.forEach(System.out::println);
    }
}
```

### Error Handling Example
```java
try {
    ArrayList<ResponseTimeMetricsClass> metrics = RealEstateService.getResponseTimeMetrics(db_url, db_user, db_pass);
    // Process metrics
} catch (RuntimeException e) {
    System.err.println("Database operation failed: " + e.getMessage());
}
```

## 🗃️ Database Schema

The application includes a visual database schema (`RealEstatePlatformSchema.png`) showing the relationships between:
- Properties
- Agents
- Buyers
- Inquiries
- Offers

## 🧪 Testing

To run the application with sample data:
```bash
mvn clean compile exec:java
```

The default implementation demonstrates agent performance retrieval.

---

**Note**: Ensure your `.env` file is properly configured with valid database credentials before running the application.
