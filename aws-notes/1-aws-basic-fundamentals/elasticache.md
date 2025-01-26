# **AWS ElastiCache**

AWS ElastiCache is a **managed caching service** that supports **Redis** and **Memcached**, designed to improve application performance by providing **in-memory data storage** with **high throughput** and **low latency**.

---

## **Key Features**
- **High Performance**: In-memory caching significantly reduces database load.
- **Stateless Applications**: Stores application states in memory, enabling stateless architectures.
- **Scaling**:
  - **Write Scaling**: Achieved via **sharding**.
  - **Read Scaling**: Enabled by **read replicas**.
- **High Availability**: Supports **Multi-AZ with automatic failover**.
- **Managed Service**: AWS handles:
  - OS maintenance
  - Patching and optimization
  - Setup and monitoring
  - Failure recovery
  - Backups

---

## **ElastiCache Solution Architectures**

### **DB Cache**
- **Workflow**:
  - Application queries ElastiCache first.
  - If the cache doesn't contain the data (**cache miss**), the application retrieves data from RDS, then stores it in the cache.
- **Benefits**:
  - Reduces load on RDS.
  - Improves read latency.
- **Key Requirement**: Cache must implement an **invalidation strategy** to maintain current data.

### **User Session Store**
- **Workflow**:
  - User logs into the application.
  - Session data is written to the cache.
  - Other backend instances can reuse session data from the cache.
- **Benefit**: Enables quick session data retrieval across instances.

---

## **Redis vs. Memcached**

| **Feature**                   | **Redis**                                  | **Memcached**                          |
|-------------------------------|--------------------------------------------|----------------------------------------|
| **High Availability**         | Supports **Multi-AZ with auto-failover**   | Multi-node for **sharding** data       |
| **Read Scaling**              | **Read replicas** for high availability    | No read replicas                       |
| **Persistence**               | Durable with **AOF persistence**           | **Non-persistent**                     |
| **Backup & Restore**          | Supports backup and restore                | No backup or restore                   |
| **Architecture**              | Single-threaded                            | Multi-threaded                         |

---

## **ElastiCache Security**

### **Common Security Features**:
- **SSL Encryption**:
  - Data in transit is encrypted using **SSL**.
- **IAM Policies**:
  - Only applicable for **AWS API-level security**.
  - Not used for authenticating database access.
  
### **Redis Security**:
- **Redis AUTH**:
  - Password/token-based authentication when creating a Redis cluster.
  - Adds a security layer beyond security groups.

### **Memcached Security**:
- **Authentication**:
  - Uses **SASL-based authentication**.

---

## **Caching Patterns**

1. **Lazy Loading**:
   - **Behavior**: Data is cached only after a read request is made.
   - **Advantages**:
     - Reduces initial overhead since only requested data is cached.
   - **Disadvantages**:
     - Data can become **stale** in the cache if it changes in the database.
   - **When to Use**: Applications with high read-to-write ratios.

2. **Write Through**:
   - **Behavior**: Data is added or updated in the cache **at the same time** as in the database.
   - **Advantages**:
     - Ensures cache stays updated with the latest data.
   - **Disadvantages**:
     - Higher write latency due to simultaneous cache updates.
   - **When to Use**: Applications requiring strong cache consistency.

3. **Session Store**:
   - **Behavior**: Temporary session data is stored in the cache, leveraging **TTL (Time to Live)** features.
   - **Advantages**:
     - Reduces session management complexity.
   - **When to Use**: Applications requiring temporary data storage for sessions.

---

## **Summary**

| **Aspect**         | **Description**                                                                                     |
|--------------------|---------------------------------------------------------------------------------------------------|
| **Service Type**    | Managed caching (supports Redis and Memcached).                                                   |
| **Performance**     | High throughput and low latency.                                                                  |
| **Scaling**         | Write (sharding) and read (replicas).                                                             |
| **Security**        | SSL in transit; Redis AUTH for Redis and SASL authentication for Memcached.                       |
| **Caching Patterns**| Lazy loading, Write Through, and Session Store.                                                   |
| **Use Cases**       | Database query caching, session data storage, application state management, high-throughput apps. |

---