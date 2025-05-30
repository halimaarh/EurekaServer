🧭 Eureka Server
This is the Eureka Server for service discovery in a microservices architecture. It acts as a service registry that allows all the microservices (like Book Service, Review Service, Recommendation Service, and Book Composite Service) to register and discover each other dynamically.

🔗 Hosted URL
Eureka Dashboard:
🔗 https://eurekaserver-0ha1.onrender.com/eureka/

Access this dashboard to monitor the status of all registered microservices.

🛠️ Features
Registers all available microservices in the system.

Enables dynamic discovery of services using Eureka Client.

Displays real-time status of registered instances via the web dashboard.

Helps load balancing and failover through client-side service discovery.

📦 Registered Microservices (Example)
Service Name	Description
book-service	Handles book creation and listing
review-service	Manages user reviews on books
recommendation-service	Provides book recommendations
book-composite-service	Aggregates book, reviews, and recommendations

🚀 How It Works
Microservices annotated with @EnableEurekaClient will automatically register themselves on startup.

The Eureka dashboard lists the names and instances of all registered clients.

Services can discover each other using their registered name via Spring Cloud or other service discovery tools.

🧪 Testing the Server
To check if the Eureka server is running correctly:

Open https://eurekaserver-0ha1.onrender.com/eureka/

You should see a UI listing all registered services (if any are running and connected).

⚙️ Setup (Optional – for local development)
bash
Copy code
# Clone the repository
git clone https://github.com/your-username/eureka-server.git

# Navigate to the project folder
cd eureka-server

# Run the Spring Boot app
./mvnw spring-boot:run
Make sure your application.yml or application.properties is configured with:

yaml
Copy code
server:
  port: 8087

eureka:
  client:
    register-with-eureka: false
    fetch-registry: false
