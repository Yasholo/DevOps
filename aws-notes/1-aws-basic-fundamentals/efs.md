# **Elastic File System (EFS)**

EFS is a fully managed, scalable, and elastic network file system (NFS) that can be shared across multiple EC2 instances, making it ideal for use cases requiring shared, concurrent access.

---

## **Key Features**

1. **Managed NFS**:
   - Mountable on multiple EC2 instances across **multiple Availability Zones (AZs)**.
   - Built for high availability and durability.

2. **Pay-Per-Use**:
   - Costs are based on usage, with higher pricing compared to EBS (approximately 3x the cost of GP2).

3. **Use Cases**:
   - Content management systems, web services, data sharing, WordPress.

4. **Protocol**:
   - Uses **NFSv4.1**.

5. **Security**:
   - Access control through **security groups**.
   - Compatible only with **Linux-based AMIs** (not supported on Windows).

---

## **Performance and Storage Classes**

### **EFS Scale**
- Supports **thousands of concurrent NFS clients**.
- Delivers **10+ GB/sec throughput**.
- Automatically scales to **petabyte-level storage**.

### **Performance Modes** (Set at creation time)
1. **General Purpose** (Default):
   - Recommended for **low-latency** use cases like web servers and CMS.
2. **Max I/O**:
   - Offers higher **throughput** with slightly **higher latency**.
   - Ideal for **big data** and **media processing** workloads.

### **Storage Classes** (With lifecycle management)
1. **Standard**:
   - Designed for **frequently accessed files**.
2. **Infrequent Access (EFS-IA)**:
   - Cost-effective for **less frequently accessed files**.
   - Includes retrieval costs, but offers **lower storage pricing**.

---

## **EBS vs. EFS**

| **Feature**       | **EBS**                                   | **EFS**                                  |
|--------------------|-------------------------------------------|------------------------------------------|
| **Access**         | Attached to one instance at a time        | Mounted to multiple instances across AZs |
| **Availability**   | AZ-specific                              | Multi-AZ                                |
| **Compatibility**  | Works with Linux and Windows             | Linux only                              |
| **Performance**    | GP2: IOPS tied to volume size<br>IO1: Adjustable IOPS | High scalability; performance modes available |
| **Pricing**        | Provisioned, pay for capacity            | Pay-per-use; more expensive than EBS    |
| **Use Case**       | Persistent storage for single instances  | Shared storage for multiple instances   |

---

## **Key Considerations**

1. **EFS for Scalability**:
   - Automatically adjusts storage size.
   - Supports **simultaneous access** by multiple EC2 instances.

2. **Lifecycle Management**:
   - Utilize EFS-IA for cost savings on infrequently accessed data.
   - Transition between storage tiers can be automated.

3. **Security**:
   - Use **security groups** and IAM policies for controlled access.

4. **Performance**:
   - Choose **General Purpose** for latency-sensitive workloads.
   - Opt for **Max I/O** for throughput-intensive tasks.

---
