# **Amazon Aurora**

Amazon Aurora is a **proprietary relational database engine** from AWS, designed for high performance and scalability while maintaining compatibility with **MySQL** and **PostgreSQL**.

---

## **Key Features**
- **Performance**:
  - 5x faster than MySQL.
  - 3x faster than PostgreSQL.
- **Scalable Storage**:
  - Automatically grows in 10GB increments up to **64TB**.
- **High Availability**:
  - Stores **6 copies of data** across **3 Availability Zones (AZs)**.
  - Self-healing with peer-to-peer replication.
- **Fast Failover**:
  - Failover occurs in **less than 30 seconds** in case of master failure.
- **Cost**:
  - Costs approximately **20% more** than standard RDS.
- **Replication**:
  - Supports **15 replicas** (compared to 5 for MySQL) with faster replication.

---

## **Aurora DB Cluster**

- **Endpoints**:
  - **Writer Endpoint**: Points to the primary instance for write operations.
  - **Read Endpoint**: Load balances read traffic across replicas.
  - **Custom Endpoints**: Used for specific subsets of instances (e.g., instances with particular configurations or parameter groups).
- **Read Replicas**:
  - Up to 15 replicas.
  - Can be placed in an **auto-scaling group** for dynamic read capacity.
- **Load Balancing**:
  - Aurora automatically distributes read queries across replicas using the **reader endpoint**.

---

## **Aurora Security**

- **Encryption**:
  - At rest: Uses **AWS KMS** for AES-256 encryption.
  - In transit: Encrypted using **SSL/TLS**.
- **Authentication**:
  - Supports **IAM token-based authentication** (like RDS).
- **Access Control**:
  - Protected with **security groups**, similar to RDS.
- **Backups**:
  - Automated backups, snapshots, and replicas are also encrypted.
- **Restrictions**:
  - No SSH access to Aurora instances.

---

## **Aurora Serverless**

- **Overview**:
  - Fully automated instantiation and auto-scaling based on demand.
- **Use Cases**:
  - Infrequent, intermittent, or unpredictable workloads.
- **Benefits**:
  - Eliminates capacity planning.
  - Pay-per-second billing, making it cost-effective.

---

## **Global Aurora**

Enables cross-region replication for global-scale applications.

### **Cross-Region Replication Options**:
1. **Aurora Cross-Region Read Replicas**:
   - Simple setup for **disaster recovery**.
   - Secondary regions act as **read-only replicas**.

2. **Aurora Global Database** (Recommended):
   - **Primary Region**:
     - Handles **read/write** operations.
   - **Secondary Regions**:
     - Up to **5 regions**.
     - Each supports **up to 16 read replicas**.
     - **Replication lag**: Less than **1 second**.
   - **Failover**:
     - Recovery Time Objective (**RTO**) is less than **1 minute**.
   - Ideal for **low-latency global access** and disaster recovery.

---

## **Summary**

| **Feature**                 | **Description**                                                                                 |
|-----------------------------|-------------------------------------------------------------------------------------------------|
| **Performance**             | 5x MySQL, 3x PostgreSQL performance.                                                           |
| **High Availability**       | 6 copies of data across 3 AZs; failover in <30 seconds.                                        |
| **Scalability**             | Automatic storage scaling (up to 64TB); up to 15 replicas.                                     |
| **Security**                | KMS encryption (at rest), SSL/TLS encryption (in transit), IAM authentication.                 |
| **Serverless Aurora**       | Auto-scaling for on-demand workloads; pay-per-second billing.                                  |
| **Global Aurora**           | Cross-region replication with <1 second lag; up to 5 secondary regions and 16 replicas/region. |

---
