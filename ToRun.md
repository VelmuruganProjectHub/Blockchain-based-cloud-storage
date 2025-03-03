# Blockchain-based-cloud-storage

Blockchain-Powered Secure Cloud Storage

A secure and decentralized cloud storage system using Spring Boot, AES-GCM encryption, Hyperledger Fabric, Google Drive, MySQL, and Docker.


---

System Requirements

Operating System: Windows 10 Pro (64-bit)

Processor: AMD PRO A4-4350B R4, 5 CORES 2C+3G (2.50 GHz)

RAM: Minimum 4 GB (8 GB recommended)

Storage: At least 10 GB free disk space



---

1. Required Software & Versions

1.1 Install Java Development Kit (JDK)

Version: OpenJDK 11 or later

Download: https://adoptopenjdk.net/

Verify installation:

java -version


1.2 Install Apache Maven

Version: 3.8.7 or later

Download: https://maven.apache.org/download.cgi

Verify installation:

mvn -version


1.3 Install MySQL Server

Version: MySQL 8.0 or later

Download: https://dev.mysql.com/downloads/mysql/

Verify installation:

mysql --version


1.4 Install Docker & Docker Compose

Version: Docker Desktop (latest)

Download: https://www.docker.com/products/docker-desktop

Verify installation:

docker --version
docker-compose --version


1.5 Install Node.js (For Frontend Development)

Version: 18.x LTS or later

Download: https://nodejs.org/

Verify installation:

node -v
npm -v


1.6 Install Hyperledger Fabric

Version: Hyperledger Fabric 2.2

Guide: https://hyperledger-fabric.readthedocs.io/

Verify installation:

peer version



---

2. Project Setup

2.1 Clone the Project Repository

git clone https://github.com/your-repo/blockchain-secure-storage.git
cd blockchain-secure-storage

2.2 Configure MySQL Database

Open MySQL and create a database:

CREATE DATABASE secure_storage;

Update backend/src/main/resources/application.properties with your MySQL username and password:

spring.datasource.url=jdbc:mysql://localhost:3306/secure_storage
spring.datasource.username=root
spring.datasource.password=yourpassword


2.3 Start MySQL Server

net start MySQL80


---

3. Run Backend (Spring Boot)

3.1 Build and Run the Backend

cd backend
mvn clean install
mvn spring-boot:run

The backend will start at http://localhost:8080.



---

4. Run Hyperledger Fabric

4.1 Start the Blockchain Network

cd hyperledger/scripts
./startFabric.sh

This starts the Hyperledger Fabric blockchain network.



---

5. Run Frontend

5.1 Serve Frontend Files

cd frontend
npx http-server

The frontend will be available at http://localhost:8081.



---

6. Run the Project using Docker

If you want to run the entire project using Docker, use:

cd docker
docker-compose up --build

This will start Spring Boot, MySQL, and Hyperledger Fabric in Docker containers.



---

7. API Endpoints


---

8. Troubleshooting

8.1 Check Running Services

docker ps

8.2 View Backend Logs

cd backend
mvn spring-boot:run

8.3 Restart Hyperledger Fabric

cd hyperledger/scripts
./startFabric.sh


---

9. Project Features

✔️ AES-GCM Encryption for Secure File Storage
✔️ Hyperledger Fabric for Immutable Key Management
✔️ Google Drive Integration for Storage
✔️ User & Admin Dashboard with Monitoring
✔️ Dockerized for Easy Deployment


---

10. Contact & Support

For any issues, contact vel76710@gmail.com or open an issue on GitHub.


---

This README.md will help you set up and run the project step by step.
