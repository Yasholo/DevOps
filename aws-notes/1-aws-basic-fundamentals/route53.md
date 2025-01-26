# Route 53 - Managed DNS by AWS

Route 53 is a highly available and scalable **Domain Name System (DNS)** web service designed to give developers and businesses an extremely reliable way to route end users to internet applications.

---

## Key Features of Route 53:

- **DNS**: A system that translates domain names (e.g., `example.com`) into IP addresses so computers can understand and locate resources.
- **Supported DNS Record Types**:
  - **A Record**: Maps a hostname to an IPv4 address.
  - **AAAA Record**: Maps a hostname to an IPv6 address.
  - **CNAME Record**: Maps a hostname to another hostname (non-root only).
  - **Alias Record**: Maps a hostname to AWS resources (e.g., Elastic Load Balancer, S3, CloudFront). Works for both root and non-root domains.

---

## Pricing

- **Hosted Zones**: $0.50/month per hosted zone.
- Additional costs for queries and health checks may apply based on usage.

---

## Domain Name Support

- **Public Domains**: Supports DNS management for domain names registered with Route 53 or external registrars.
- **Private Domains**: Creates private hosted zones for resources within VPCs.

---

## Advanced Features

1. **Load Balancing Through DNS**:
   - Enables **client-side load balancing** using different routing policies.
2. **Health Checks**:
   - Automatically detects unhealthy endpoints and stops routing traffic to them.
3. **Routing Policies**:
   - Flexible routing based on use cases (explained below).

---

## TTL (Time to Live) for DNS Records

- **Definition**: The time (in seconds) a DNS record is cached by clients or web browsers.
- **High TTL** (e.g., 24 hours):
  - Reduces DNS query traffic.
  - May cause outdated DNS information if records are changed.
- **Low TTL** (e.g., 60 seconds):
  - Increases DNS query traffic.
  - Ensures rapid propagation of changes to DNS records.

**Tip:** Each DNS record must have a TTL defined!

---

## CNAME vs Alias Records

| Feature           | CNAME                                  | Alias                                   |
|--------------------|----------------------------------------|-----------------------------------------|
| **Purpose**        | Maps hostname to another hostname.     | Maps hostname to AWS resources.         |
| **Root Domain**    | ❌ Not supported.                      | ✅ Supported.                           |
| **Cost**           | Charges apply.                        | Free of charge.                         |
| **Health Checks**  | Not supported.                        | Supported.                              |

---

## Health Checks

Route 53 performs health checks to monitor the status of endpoints.

- **Unhealthy Instances**: Instances failing `X` consecutive checks (default: 3) are marked as unhealthy.
- **Healthy Instances**: Marked as healthy after passing `X` consecutive checks.
- **Interval**: 30s (default) or 10s for fast checks (higher cost).
- **Protocols**: HTTP, HTTPS (without SSL verification), TCP.
- **Integration**: Works seamlessly with CloudWatch for monitoring.

---

## Routing Policies

### 1. Simple Routing
- Routes traffic to a single resource.
- Supports multiple values, with clients choosing randomly.
- **Use Case**: Single application or static website.

### 2. Weighted Routing
- Splits traffic between resources based on predefined weights.
- **Use Case**: Testing new application versions or distributing traffic across regions.

### 3. Latency-Based Routing
- Routes traffic to the region with the lowest latency for the client.
- **Use Case**: Optimizing performance for global users.

### 4. Failover Routing
- Redirects traffic to a secondary resource if the primary one fails.
- Requires health checks.
- **Use Case**: Disaster recovery setup.

### 5. Geolocation Routing
- Routes traffic based on user location.
- Requires a default policy for unmatched locations.
- **Use Case**: Delivering localized content.

### 6. Geoproximity Routing
- Routes traffic based on user location with **bias** adjustments to control traffic distribution.
- Requires Route 53 Traffic Flow for configuration.
- **Use Case**: Optimized traffic redirection with geographic control.

### 7. Multi-Value Answer Routing
- Routes traffic to multiple resources, considering health checks.
- Returns up to 8 healthy records.
- **Note**: Not a replacement for Elastic Load Balancer.
- **Use Case**: Distributing traffic across multiple endpoints.

---

## Using Route 53 as a Domain Registrar

- **Registrar**: Manages the reservation of internet domain names (e.g., GoDaddy, Google Domains, Route 53).
- To use Route 53 with third-party domains:
  1. **Create a Hosted Zone**: Set up the domain in Route 53.
  2. **Update NS Records**: Configure third-party registrar to use Route 53's name servers.
