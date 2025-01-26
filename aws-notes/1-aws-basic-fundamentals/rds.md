# **AWS RDS - Relational Database Service**

AWS RDS is a **fully managed relational database service** that simplifies the setup, operation, and scaling of relational databases in the cloud. 

---

## **Supported Database Engines**
- PostgreSQL
- MySQL
- MariaDB
- Oracle
- Microsoft SQL Server
- Amazon Aurora

---

## **Advantages of RDS Over Self-Managed Databases**
- Fully managed service:
  - Automated provisioning and OS patching.
  - Continuous backups with **Point-in-Time Restore** capability.
  - Monitoring dashboards.
  - Read replicas for scaling.
  - Multi-AZ deployments for high availability.
  - Maintenance windows for upgrades.
  - Vertical and horizontal scaling capabilities.
  - Storage backed by **EBS** (GP2 or IO).

**Disadvantage**:
- No SSH access to the instance hosting the database.

---

## **RDS Backups**

1. **Automated Backups**:
   - Daily full backups during the maintenance window.
   - **Transaction logs** backed up every 5 minutes for **Point-in-Time Restore**.
   - Default retention is 7 days (can increase up to 35 days).

2. **Manual Snapshots**:
   - Manually triggered by users.
   - Retention is indefinite (as long as desired).
   - Useful for long-term retention and recovery.

---

## **RDS Read Replicas**

- **Purpose**: Scale **read operations** by creating up to 5 asynchronous replicas.
- **Replication Options**: 
  - Within the same AZ.
  - Across different AZs or regions.
- **Use Cases**:
  - Reporting or analytics without overloading the primary database.
- **Promotion**:
  - Read replicas can be promoted to standalone databases.
- **Cost Consideration**:
  - Cross-AZ or cross-region replication incurs additional **network costs**.

---

## **RDS Multi-AZ Deployments (Disaster Recovery)**

- Provides **synchronous replication** for high availability.
- Offers a single DNS name for the database endpoint.
- In case of failure, traffic is automatically redirected to the standby instance.
- **Not used for scaling** (only for failover).

---

## **RDS Security**

### **Encryption**

1. **At Rest**:
   - Encrypted using **AWS KMS** with AES-256.
   - Must be enabled at the database launch.
   - Read replicas inherit encryption from the primary database.
   - **TDE (Transparent Data Encryption)** supported for Oracle and SQL Server.

2. **In-Flight Encryption**:
   - Uses **SSL certificates** for client-to-database connections.
   - Enforced via DB parameter groups:
     - PostgreSQL: `rds.force_ssl=1`.
     - MySQL: `GRANT USAGE ON *.* TO 'user'@'%' REQUIRE SSL;`.

3. **Backup Encryption**:
   - Snapshots of encrypted databases are encrypted by default.
   - Unencrypted snapshots can be copied with encryption enabled.

**To Encrypt an Existing Database**:
   - Create a snapshot.
   - Copy the snapshot with encryption.
   - Restore a new database from the encrypted snapshot.

---

### **Network Security**

- Deploy RDS databases in **private subnets**.
- Control access using **security groups**.
- Ensure **IAM policies** restrict who can manage RDS instances.

---

### **IAM Database Authentication**

- Available for **MySQL** and **PostgreSQL**.
- Eliminates the need for passwords:
  - Authenticate using a short-lived **IAM token** (valid for 15 minutes).
- Benefits:
  - Enforced encryption via SSL.
  - Centralized user management via IAM.
  - Easier integration with EC2 instance profiles and IAM roles.

---

### **Security Responsibilities**

#### **Your Responsibility**:
- Configure **security groups**, ports, and IP rules.
- Manage database user accounts and permissions (or integrate IAM).
- Choose public or private database access.
- Ensure SSL-only connections for the database.

#### **AWS Responsibility**:
- Database patching.
- Underlying OS updates.
- High availability and durability through managed infrastructure.

---

## **RDS Summary**

| **Feature**                     | **Description**                                                                                   |
|----------------------------------|---------------------------------------------------------------------------------------------------|
| **Automated Backups**            | Daily backups with point-in-time restore (up to 35 days retention).                              |
| **Manual Snapshots**             | Manually triggered, long-term retention, and sharable across accounts.                          |
| **Read Replicas**                | Scale reads asynchronously, available across AZs and regions.                                    |
| **Multi-AZ Deployments**         | High availability with synchronous replication, automatic failover.                              |
| **Encryption**                   | Supports AES-256 encryption for data at rest and SSL for in-flight encryption.                   |
| **IAM Database Authentication**  | Allows passwordless access for MySQL and PostgreSQL using short-lived tokens.                    |
| **Network Security**             | Controlled via security groups, usually deployed in private subnets for additional protection.   |

---