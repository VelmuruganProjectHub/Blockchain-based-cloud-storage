BLOCKCHAIN-POWERED SECURE CLOUD STORAGE WITH ENCRYPTED KEY MANAGEMENT

---

ABSTRACT

In today's digital landscape, data security and privacy are critical concerns. This 
project presents a blockchain-based secure storage system that ensures confidentiality, 
integrity, and decentralized key management for uploaded files. The system allows users 
to upload documents through a web interface, where files are encrypted using AES-GCM 
before being securely stored in Google Drive. The encryption keys are stored on a 
Hyperledger Fabric blockchain, ensuring immutability and preventing unauthorized 
access.
When a user requests a file, the system retrieves the encrypted file from Google 
Drive, fetches the decryption key from the blockchain, and serves the decrypted file 
securely. Additionally, an Admin Panel is included for monitoring user activities, 
transactions, and blockchain logs. 
The project leverages Spring Boot for backend development, MySQL for 
managing user data, Hyperledger Fabric for decentralized key storage, and Docker for 
seamless deployment. This system provides a highly secure, scalable, and decentralized 
approach to cloud-based file storage, making it ideal for applications requiring enhanced 
data privacy and security.


---
Software Requirements

 Java Development Kit (JDK) – Required to run the Java-based backend. 
 Spring Boot – Backend Framework for API development. 
 MySQL Server – Database for storing user metadata. 
 Hyperledger Fabric – Blockchain for storing encryption keys. 
 Node.js & npm – Required for HyperLedgers Fabric setup. 
 Google Drive API Credentials – For Secure file storage in Google Drive. 
 Docker & Docker Compose – Containerization for easy deployment.   
 VS Code Editor – Integrated Development Environment. 
