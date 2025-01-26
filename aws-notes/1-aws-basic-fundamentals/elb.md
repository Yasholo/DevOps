# Elastic Load Balancers (ELB)

Elastic Load Balancers (ELBs) are critical components for achieving scalability and high availability in modern cloud applications. This guide delves into their features, types, and configurations, providing insights to help you design efficient and robust architectures.

---

## Scalability and High Availability

### Scalability
Scalability ensures that a system can handle increased workloads efficiently by adapting its resources. It can be classified into:

1. **Vertical Scalability** (Scale Up/Down):
   - Enhances the capacity of a single instance (e.g., upgrading from a t2.micro to a t2.large).
   - Commonly used for non-distributed systems, like databases.
   - Services such as RDS and ElastiCache support vertical scaling.

2. **Horizontal Scalability** (Scale Out/In):
   - Involves adding more instances to distribute the workload.
   - Ideal for distributed systems.
   - AWS services like EC2 simplify horizontal scaling.

### High Availability
High availability ensures that applications remain operational even during infrastructure failures by distributing workloads across multiple Availability Zones (AZs).

- **Active/Passive**: Backup systems take over only during failures.
- **Active/Active**: All systems operate simultaneously.

**Note**: ELBs support scaling but may require pre-warming for large-scale operations. Contact AWS for assistance.

### Troubleshooting & Monitoring
- **Common Errors**:
  - `4xx`: Client-side issues.
  - `5xx`: Server-side issues.
  - `503`: Load balancer capacity reached or no available targets.
  - Security group misconfigurations may block traffic to targets.
- **Monitoring Tools**:
  - ELB Access Logs: Records all requests to the load balancer.
  - CloudWatch Metrics: Provides aggregated performance statistics.

---

## Load Balancing Basics

### Why Use Load Balancers?
Load balancers distribute traffic across multiple servers to:
- Optimize resource utilization and enhance application performance.
- Provide a single point of access (DNS).
- Ensure fault tolerance through health checks.
- Offer SSL termination (HTTPS support).
- Manage session stickiness (user affinity).
- Separate public and private traffic.

### ELBs as Managed Load Balancers
- AWS handles upgrades, maintenance, and high availability.
- While custom load balancers may reduce costs, they require significant effort to maintain.
- ELBs integrate seamlessly with AWS services, offering flexibility and reliability.

---

## Health Checks

Health checks ensure traffic is routed only to healthy instances by monitoring a specific port and endpoint (e.g., `/health`).
- Instances returning a non-`200` response are marked unhealthy.

---

## Types of Load Balancers on AWS
AWS provides four types of load balancers, each tailored to different use cases and requirements:

### 1. Classic Load Balancer (CLB)
- **Overview**:
  - The original load balancer type, primarily for legacy architectures.
  - Operates at both Layer 4 (TCP) and Layer 7 (HTTP/HTTPS).
- **Key Features**:
  - Basic routing and health check capabilities.
  - Fixed hostname in the format `XXX.region.elb.amazonaws.com`.
  - Suitable for applications requiring minimal features.
- **Health Checks**:
  - Configurable for TCP or HTTP checks.
  - Limited routing flexibility.

### 2. Application Load Balancer (ALB)
- **Overview**:
  - Designed for Layer 7 (HTTP/HTTPS) traffic, offering advanced application-level routing.
  - Ideal for containerized and microservices architectures.
- **Key Features**:
  - Path-based routing: Route requests based on the URL path (e.g., `/api` vs `/web`).
  - Hostname-based routing: Direct traffic based on the hostname in the request.
  - Query string and header-based routing: Fine-grained control over traffic distribution.
  - HTTP/2 and WebSocket support for modern web applications.
- **Target Groups**:
  - Supports EC2 instances, ECS tasks, Lambda functions, and private IP addresses.
  - Dynamic port mapping for ECS integration.
- **Use Cases**:
  - Microservices and containerized applications.
  - Scenarios requiring complex routing rules.

### 3. Network Load Balancer (NLB)
- **Overview**:
  - Optimized for extreme performance and low latency.
  - Operates at Layer 4 (TCP/UDP).
- **Key Features**:
  - Handles millions of requests per second with minimal latency (~100 ms).
  - Provides static IPs for predictable traffic routing.
  - Elastic IP support for whitelisting and security configurations.
  - TLS termination for secure connections.
- **Use Cases**:
  - High-performance scenarios (e.g., financial systems, online gaming).
  - Applications requiring static IP addresses.

### 4. Gateway Load Balancer (GWLB)
- **Overview**:
  - Specialized for deploying third-party virtual appliances (e.g., firewalls, intrusion detection systems).
  - Integrates with traffic flows in a Virtual Private Cloud (VPC).
- **Key Features**:
  - Operates at Layer 3, enabling seamless traffic inspection.
  - Simplifies the deployment of virtual appliances.
- **Use Cases**:
  - Advanced security configurations.
  - Network traffic inspection and monitoring.

---

## Additional Features

### Stickiness
- **What It Is**: Ensures requests from the same client are consistently routed to the same target.
- **How It Works**: Achieved through cookies with a configurable expiration period.
- **Advantages**:
  - Maintains session consistency for stateful applications.
- **Challenges**:
  - May cause uneven traffic distribution.

### Cross-Zone Load Balancing
- **Purpose**: Distributes traffic evenly across instances in multiple AZs.
- **Behavior by Load Balancer Type**:
  - **ALB**: Always enabled, with no additional costs.
  - **CLB**: Disabled by default; can be enabled without extra charges.
  - **NLB**: Disabled by default; enabling incurs additional charges.

### SSL/TLS Certificates
- **Encryption in Transit**: Protects data between clients and load balancers.
- **Certificate Management**:
  - Managed through AWS Certificate Manager (ACM).
  - Supports multiple certificates using Server Name Indication (SNI).
- **HTTPS Listener Configuration**:
  - Default and optional certificates for multi-domain support.
  - Configurable security policies for backward compatibility.

### Connection Draining (Deregistration Delay)
- **What It Is**: Allows in-flight requests to complete before an instance is deregistered.
- **How It Works**:
  - Configurable timeout (1-3600 seconds).
  - Prevents abrupt termination of active requests.

### Server Name Indication (SNI)
- **Purpose**: Enables multiple SSL certificates to be hosted on a single load balancer.
- **Supported By**: ALB, NLB, and CloudFront (not supported by CLB).
- **How It Works**: The client specifies the hostname during the SSL handshake, allowing the appropriate certificate to be served.

---

By understanding and leveraging the capabilities of Elastic Load Balancers, you can design applications that are both scalable and highly available, meeting the demands of modern cloud environments.
