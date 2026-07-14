# System Architecture — Concept Inventory

Core concepts the System Architecture quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Architectural Styles

- **Monolith**: Single deployable unit — simplicity, shared database, deployment coupling
- **Modular monolith**: Monolith with enforced module boundaries — internal decoupling without distributed complexity
- **Microservices**: Independently deployable services — when the complexity is justified
- **Serverless**: Functions as compute units — cold starts, statelessness, vendor coupling
- **Event-driven**: Components communicate via events — decoupling, eventual consistency

## Service Communication

- **Synchronous (REST/gRPC)**: Request-response — simple but creates temporal coupling
- **Asynchronous (messages/events)**: Fire-and-forget or pub/sub — decoupled but harder to debug
- **API Gateway**: Single entry point — routing, auth, rate limiting in one place
- **Service mesh**: Infrastructure-level communication management (Istio, Linkerd)
- **Contract testing**: Ensuring services agree on interface shape without integration tests

## Configuration & Environment

- **Environment variables**: Runtime configuration, 12-factor app principles
- **Configuration hierarchy**: Defaults → env-specific → secrets
- **Feature flags**: Decoupling deployment from release
- **Secret management**: Vaults, encrypted env files, rotation strategies
- **Config validation**: Fail-fast on startup if config is invalid

## Containerization & Deployment

- **Docker**: Reproducible environments, isolation, image layering
- **Multi-stage builds**: Separate build and runtime images for smaller deployments
- **Docker Compose**: Local multi-service development
- **Orchestration (K8s)**: Scaling, self-healing, service discovery
- **Infrastructure as Code**: Declarative infrastructure (Terraform, Bicep, Pulumi)

## Data Architecture

- **Database per service**: Each service owns its data — no shared databases
- **Event sourcing**: Storing state changes as events, rebuilding state from history
- **CQRS**: Separate read and write models — when complexity is warranted
- **Caching layers**: Where to cache (CDN, reverse proxy, application, database)
- **Data consistency**: Strong vs. eventual consistency, saga pattern for distributed transactions

## Scalability

- **Horizontal scaling**: Adding more instances — requires stateless design
- **Vertical scaling**: Bigger machines — simpler but has limits
- **Load balancing**: Distributing requests across instances
- **Auto-scaling**: Scaling based on metrics (CPU, queue depth, request count)
- **Backpressure**: What happens when a downstream service can't keep up

## Boundaries & Coupling

- **Bounded contexts**: Where one model ends and another begins
- **Shared nothing**: Services don't share databases, file systems, or memory
- **API contracts**: Stable interfaces between components
- **Dependency direction**: High-level modules don't depend on low-level modules
- **Anti-corruption layer**: Translating between different models at boundaries
