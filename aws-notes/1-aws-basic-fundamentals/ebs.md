
# **Elastic Block Storage (EBS)**

EBS provides persistent, high-performance block storage for Amazon EC2 instances, enabling data to persist independently of the lifecycle of the instance.

---

## **Key Features**

1. **Persistent Storage**: Retains data even when EC2 instances are stopped or terminated.
2. **Network-Drive Characteristics**:
   - Communicates over the network, which may introduce latency.
   - Detachable and re-attachable to other EC2 instances within the same AZ.
3. **AZ-Locked**: EBS volumes are specific to an Availability Zone (AZ). Use snapshots to move volumes across AZs or regions.
4. **Provisioned Capacity**:
   - Specify size (GB) and IOPS (Input/Output Operations Per Second).
   - Billing is based on provisioned capacity, not usage.

---

## **EBS Volume Types**

### **SSD-Backed Volumes**
| **Type**  | **Best For**                                | **Size**            | **Max IOPS**  | **Boot Volume** |
|-----------|---------------------------------------------|---------------------|---------------|-----------------|
| **gp2**   | General workloads                           | 1 GiB - 16 TiB      | 16,000        | Yes             |
| **io1**   | Critical applications needing high IOPS     | 4 GiB - 16 TiB      | 64,000        | Yes             |

### **HDD-Backed Volumes**
| **Type**  | **Best For**                                | **Size**            | **Max IOPS**  | **Boot Volume** |
|-----------|---------------------------------------------|---------------------|---------------|-----------------|
| **st1**   | Streaming workloads, frequent access        | 500 GiB - 16 TiB    | 500           | No              |
| **sc1**   | Infrequently accessed, large datasets       | 500 GiB - 16 TiB    | 250           | No              |

---

## **Deep Dive into Volume Types**

### **GP2**
- General-purpose, balances price and performance.
- Small volumes can burst to 3,000 IOPS.
- Volume size 1 GiB – 16 TiB
- **Max IOPS**: 16,000; **Provisioning**: 3 IOPS per GiB.

### **IO1**
- Designed for critical, low-latency applications.
- Volume size 4 GiB – 16 TiB
- **Max IOPS**: 64,000 (Nitro instances); Ratio: 50 IOPS per GiB.

### **ST1**
- High throughput at a low price; ideal for big data and streaming.
- Volume size 4 GiB – 16 TiB
- **Max Throughput**: 500 MiB/sec; not bootable.

### **SC1**
- Cost-effective for infrequent data access.
- Volume size 500 GiB – 16 TiB
- **Max Throughput**: 250 MiB/sec; not bootable.

---

## **EBS Snapshots**

1. **Incremental**: Only changed blocks are backed up.
2. **Storage**: Snapshots are stored in S3.
3. **Migration**:
   - Snapshots can be copied across AZs/regions.
   - Use snapshots to create volumes in another AZ/region.
4. **Pre-Warming**: Restored volumes may need pre-warming (`fio` or `dd`).
5. **Automation**: Automate snapshots using **Amazon Data Lifecycle Manager**.

---

## **Encryption**

- **At Rest and In Transit**: Encrypted volumes ensure secure data handling.
- **Snapshots and Derived Volumes**: All derived snapshots and volumes inherit encryption.
- **Encryption Keys**: Managed via AWS KMS (AES-256).
- **Convert Unencrypted Volumes**:
  1. Create a snapshot of the volume.
  2. Copy the snapshot with encryption enabled.
  3. Create a volume from the encrypted snapshot.

---

## **EBS vs. Instance Store**

| **Feature**       | **EBS**                   | **Instance Store**            |
|-------------------|---------------------------|--------------------------------|
| **Persistence**   | Data persists on stop/terminate | Data lost on stop/terminate  |
| **Performance**   | Moderate IOPS            | Very high IOPS                |
| **Use Case**      | Persistent workloads      | Temporary, ephemeral storage  |
| **Data Backup**   | Automated (snapshots)     | Manual by the user            |

---

## **RAID Options with EBS**

### **RAID 0**
- **Purpose**: Increase performance by striping across volumes.
- **Use Case**: High IOPS applications without fault-tolerance needs.
- **Risk**: Data loss if any volume fails.

### **RAID 1**
- **Purpose**: Enhance fault tolerance via volume mirroring.
- **Use Case**: Applications requiring redundancy.
- **Consideration**: Higher cost due to data duplication.

> RAID 5/6 is not recommended for EBS due to lack of hardware acceleration.

---

## **Best Practices**

1. **Snapshots**: Schedule regular snapshots to ensure data backup and enable cross-region recovery.
2. **Encryption**: Use encrypted volumes for sensitive workloads.
3. **Performance Optimization**:
   - Select the appropriate volume type based on workload requirements.
   - Pre-warm restored volumes to achieve optimal I/O performance.
4. **Monitoring**: Continuously monitor EBS metrics using Amazon CloudWatch.

---

This refined version simplifies navigation while retaining all critical details. Let me know if you'd like more changes!