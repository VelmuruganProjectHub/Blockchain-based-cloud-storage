blockchain-secure-storage/
│── backend/
│   │── src/
│   │   │── main/
│   │   │   │── java/com/securestorage/
│   │   │   │   │── config/        # Configuration files (DB, Security, Blockchain, etc.)
│   │   │   │   │── controller/    # REST controllers (User, Admin, File handling)
│   │   │   │   │── service/       # Business logic (Encryption, Decryption, Blockchain integration)
│   │   │   │   │── repository/    # Database repositories
│   │   │   │   │── model/         # Entity classes (User, File, Plan, etc.)
│   │   │   │   │── dto/           # Data Transfer Objects
│   │   │   │   │── BlockchainService.java  # Hyperledger Fabric Integration
│   │   │── resources/
│   │   │   │── application.properties  # Database, blockchain, and storage config
│   │── pom.xml  # Maven dependencies
│── database/
│   │── schema.sql  # Database schema for MySQL
│   │── data.sql  # Sample data for testing
│── docker/
│   │── docker-compose.yml  # Docker setup for Spring Boot, MySQL, and Hyperledger Fabric
│   │── Dockerfile  # Spring Boot application containerization
│── frontend/
│   │── css/
│   │   │── styles.css  # Common styles
│   │── js/
│   │   │── script.js  # Frontend JavaScript logic
│   │── images/
│   │── pages/
│   │   │── index.html  # Home page
│   │   │── register.html  # User registration page
│   │   │── login.html  # User login page
│   │   │── dashboard.html  # User dashboard
│   │   │── admin.html  # Admin dashboard
│   │   │── contact.html  # Contact us page
│── hyperledger/
│   │── network/
│   │   │── configtx.yaml  # Hyperledger Fabric network configuration
│   │   │── crypto-config.yaml  # Crypto material for Fabric
│   │── scripts/
│   │   │── startFabric.sh  # Script to start Fabric network
│── README.md  # Project setup and usage instructions