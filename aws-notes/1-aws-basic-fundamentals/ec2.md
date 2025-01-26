# Amazon EC2

## Overview

Amazon Elastic Compute Cloud (EC2) is a web service that provides scalable compute capacity in the cloud. It enables users to rent virtual machines, store data, balance loads, and scale applications efficiently. EC2 eliminates the need to invest in hardware upfront, allowing you to develop and deploy applications faster.

## Capabilities of EC2

EC2 primarily provides the following functionalities:

- Virtual Machines (EC2): Rent virtual servers to run various workloads.

- Elastic Block Store (EBS): Persistent, reliable storage for your instances.

- Elastic Load Balancing (ELB): Automatically distribute incoming traffic across multiple servers.

- Auto Scaling Groups (ASG): Scale resources automatically to match demand.

## Key Features:

- Virtual Machines on Demand: Launch virtual servers (instances) as needed.

- Elasticity: Scale up or down based on requirements.

- Flexible Pricing Models: Pay only for what you use.

- Customization: Choose from a variety of instance types, operating systems, and configurations.

## EC2 Instance Launch Types

1. On-Demand Instances

    - Use Case: Short-term, unpredictable workloads.

    - Pricing: Pay per second, no upfront commitment.

    - Advantages: High flexibility and no risk of over-provisioning.

2. Reserved Instances

    - Use Case: Long-term, steady-state workloads (e.g., databases).

    - Pricing: Up to 75% savings compared to On-Demand.

    - Features: Options for 1-year or 3-year terms.

    - Types:

        - Standard Reserved: Best for long-term savings.

        - Convertible Reserved: Allows instance type changes (up to 54% discount).

        - Scheduled Reserved: For workloads with predictable schedules.

3. Spot Instances

    - Use Case: Fault-tolerant and flexible applications (e.g., batch processing).

    - Pricing: Up to 90% savings compared to On-Demand.

    - Risks: Instances can be interrupted if the Spot price exceeds your maximum bid. Not recommended for critical jobs/databases.

    - Combination Strategy: use reserved instances for baseline and spot instances for peaks.

4. Dedicated Instances

    - Use Case: Instances that do not share hardware with other customers.

    - Features: Offers isolation but no control over instance placement.

5. Dedicated Hosts

    - Use Case: Regulatory compliance and software with specific licensing requirements.

    - Features: Full control over physical server placement.

## Security Groups (SG)

**Definition:** Security Groups are vital for managing network security in AWS. Acting as virtual firewalls, they control both inbound and outbound traffic to and from EC2 instances.

### Deep Dive

- Regulate:
    - Port access.
    - IP ranges (IPv4 and IPv6).
    - Inbound and outbound traffic. (Apply rules at the instance level, blocking unauthorized traffic before it reaches or leaves the instance.)

- Characteristics:
    - Attach to multiple instances.
    - Restricted to a region/VPC combination.
    - Reside outside EC2 instances, making them independent of the instance's visibility.

- Key Notes:
    - Use separate security groups for distinct access types, such as SSH.
    - If a request times out, check SG rules.
    - A "connection refused" error indicates an application issue, not SG.
    - Default: All inbound traffic blocked, all outbound traffic allowed.
    - SGs can reference other SGs for traffic permissions.

## Elastic IP (EIP)

**Definition:** A static IPv4 address for dynamic cloud computing.

**Use Cases:**

- Retain a public IP after stopping/restarting an instance.
- Failover and disaster recovery.
- Easy reassignment to other instances during failures.
- Useful for maintaining consistent public-facing endpoints.

**Limitations:**

- Limited to 5 Elastic IPs per account (soft limit).

- Encouraged to use DNS over Elastic IPs for better scalability and to minimize architectural complexity.


## EC2 User Data

**Purpose:** Automate initial setup tasks during instance boot.

**Features:**

    - Run scripts for software installation, configuration, updates etc.

    - Executes only once during the first boot.

    - Runs with root privileges.

## EC2 Instance Types

- R: Optimized for memory-intensive applications (e.g., cache).

- C: Compute-optimized for high-performance tasks.

- M: General-purpose, balanced instances.

- I: Storage-optimized for high I/O tasks (databases).

- G: GPU instances for ML and graphics rendering (video rendering, ML).

- T2/T3: Burstable instances for low-cost workloads with occasional spikes.

Burstable Instances: Burst credits enable short-term high performance while operating below the baseline most of the time. "T2/T3 Unlimited" options prevent throttling by charging for additional credits.


## AMI (Amazon Machine Image)

**Definition:** A pre-configured template for launching EC2 instances.

**Advantages:**

    - Faster boot times.

    - Pre-installed software.

    - Enhanced security and standardization.

**Custom AMI:** Create tailored AMIs for specific requirements.

**Public AMIs:** Use trusted public AMIs or AWS Marketplace offerings.

**Storage:** 
- AMIs are stored in S3 and are region-specific (private and locked to an account/region).

**Cross-Account Sharing:**
- Share AMIs across accounts or regions with proper permissions.
- Ownership remains unchanged.
- Shared encrypted AMIs require snapshot/key permissions.

## Placement Groups
Control instance placement within AWS infrastructure:

1. Cluster Placement Group

    - Use Case: Low-latency and high-throughput/high-bandwidth applications.

    - Limitation: Single Availability Zone (AZ).

2. Spread Placement Group

    - Use Case: Applications requiring high availability.

    - Feature: Instances are placed on separate hardware.

3. Partition Placement Group

    - Use Case: Big data applications like Hadoop or Kafka.

    - Feature: Instances are divided into isolated partitions.


## EC2 Hibernate

**Purpose:** Save RAM state to disk for faster restarts. Ideal for workloads requiring rapid recovery without reinitialization.

**Requirements:**

    - Supported instance types: C, M, R families.

    - Encrypted EBS volumes.

    - RAM size ≤ 150 GB.

**Limitations:**

    - Hibernate is not supported for bare metal instances.

    - Maximum hibernation period: 60 days.


## EC2 Networking

### Elastic Network Interfaces (ENI)

**Definition:** Virtual network cards for EC2 instances. ENIs provide flexible network configurations in a VPC.

**Features:**

    - Attach/detach to/from instances dynamically.

    - Assign private and public IPs.

    - Use multiple ENIs for enhanced networking.

    - AZ-specific configurations.

## Pricing Models

1. **On-Demand:** Pay-as-you-go.

2. **Spot:** Bid for unused capacity.

3. **Reserved:** Long-term commitment with discounts.

4. **Savings Plan:** Flexible pricing based on hourly usage.


## Tips for Solution Architects

**Monitoring:** Use CloudWatch to track CPU credits and instance performance.

**Scaling:** Combine Auto Scaling Groups (ASG) with Elastic Load Balancers (ELB).

**Resilience:** Design fault-tolerant systems with multiple AZs and placement groups.

**Security:** Always restrict security groups to specific IPs and ports.

**Cost Optimization:** Mix On-Demand, Reserved, and Spot instances based on workload requirements.


## Conclusion

Mastering EC2 is essential for designing scalable, resilient, and cost-efficient cloud solutions. Understanding the various instance types, pricing models, networking features, and security measures is crucial for the AWS Solution Architect exam.
