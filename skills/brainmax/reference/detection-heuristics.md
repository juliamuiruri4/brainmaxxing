# Detection Heuristics

The `/brainmax` orchestrator uses these heuristics to determine which knowledge domains are present in a project. A domain is "detected" when **two or more** signals are found.

---

## api-design

| Signal | What to look for |
|--------|-----------------|
| Route definitions | Files with route/endpoint declarations (e.g., Express routes, FastAPI decorators, Spring controllers, Rails routes.rb) |
| HTTP method handlers | Functions handling GET, POST, PUT, DELETE, PATCH |
| Request/response schemas | DTOs, serializers, request validators, OpenAPI/Swagger specs |
| Middleware | Auth middleware, rate limiting, CORS configuration |
| Status codes | Explicit HTTP status code usage beyond defaults |
| API versioning | URL paths or headers indicating versioned endpoints |

---

## database-design

| Signal | What to look for |
|--------|-----------------|
| Schema definitions | ORM models, migration files, SQL schema files, Prisma schema, TypeORM entities |
| Relationships | Foreign keys, joins, references between models |
| Migrations | Versioned database migration files |
| Query builders | Complex queries, raw SQL, query builder usage |
| Indexes | Index definitions, unique constraints |
| Seed data | Database seeding scripts |

---

## system-architecture

| Signal | What to look for |
|--------|-----------------|
| Service boundaries | Multiple services, microservice structure, module boundaries |
| Configuration | Environment-based config, feature flags, config files per environment |
| Docker/containers | Dockerfile, docker-compose.yml, container orchestration |
| Message queues | Pub/sub, event emitters, message broker config (RabbitMQ, Kafka, Redis streams) |
| Service communication | HTTP clients, gRPC definitions, API gateway config |
| Monorepo tooling | Workspace definitions (Turborepo, Nx, Lerna) |

---

## implementation-patterns

| Signal | What to look for |
|--------|-----------------|
| Design patterns | Factory functions, strategy pattern, observer/event pattern, dependency injection |
| Abstraction layers | Repository pattern, service layer, adapter pattern |
| Error types | Custom error classes, error hierarchies |
| Generics/interfaces | Type abstractions, interface definitions, protocols |
| Configuration patterns | Builder pattern, options objects, environment abstraction |
| Module organization | Clear separation of concerns, barrel files, feature folders |

---

## testing-strategy

| Signal | What to look for |
|--------|-----------------|
| Test files | Files matching `*.test.*`, `*.spec.*`, `__tests__/`, `test/` directories |
| Test frameworks | Jest, Vitest, pytest, JUnit, Mocha, Playwright, Cypress configs |
| Test utilities | Factories, fixtures, mocks, test helpers |
| Coverage config | Coverage thresholds, coverage reports, NYC/Istanbul config |
| Integration tests | Tests that hit real databases, API tests, container-based tests |
| CI test steps | Test commands in CI/CD pipeline configs |

---

## security-fundamentals

| Signal | What to look for |
|--------|-----------------|
| Authentication | Login routes, JWT handling, session management, OAuth config |
| Authorization | Role checks, permission guards, policy files, RBAC definitions |
| Input validation | Schema validation (Zod, Joi, class-validator), sanitization |
| Secrets management | .env files, vault config, secret references |
| CORS configuration | CORS middleware, allowed origins |
| Encryption | Hashing (bcrypt, argon2), encryption utilities |

---

## devops-and-ci-cd

| Signal | What to look for |
|--------|-----------------|
| CI config | `.github/workflows/`, `.gitlab-ci.yml`, `Jenkinsfile`, CircleCI config |
| Deployment config | Kubernetes manifests, Terraform files, Bicep/ARM, Serverless framework |
| Build scripts | Multi-stage Dockerfiles, build commands, bundler config |
| Environment management | Staging/production configs, environment variables per deploy target |
| Infrastructure as code | IaC files defining cloud resources |
| Release automation | Version bumping, changelog generation, release scripts |

---

## error-handling-and-resilience

| Signal | What to look for |
|--------|-----------------|
| Try/catch patterns | Error handling blocks, especially around I/O operations |
| Retry logic | Retry mechanisms, exponential backoff, circuit breakers |
| Fallback behavior | Default values on failure, graceful degradation |
| Error boundaries | React error boundaries, global exception handlers |
| Timeout configuration | Request timeouts, connection timeouts, deadline propagation |
| Health checks | Liveness/readiness endpoints, dependency health verification |

---

## requirements-and-scope

| Signal | What to look for |
|--------|-----------------|
| Documentation | README with project goals, PRD files, requirements docs |
| Issue tracking | References to issues, TODO comments with context |
| User stories | Acceptance criteria, feature descriptions |
| Scope boundaries | What's explicitly excluded, MVP markers |
| Stakeholder context | Target audience description, user personas |

---

## domain-modeling

| Signal | What to look for |
|--------|-----------------|
| Rich domain objects | Classes/types with behavior (not just data bags) |
| Value objects | Immutable types representing concepts (Money, Email, DateRange) |
| Aggregates | Transaction boundaries, consistency rules |
| Domain events | Event types representing business occurrences |
| Bounded contexts | Separate modules with their own models for the same real-world concept |
| Business rules | Validation that encodes domain knowledge (not just format checks) |

---

## ui-and-frontend

| Signal | What to look for |
|--------|-----------------|
| Component architecture | React/Vue/Svelte/Angular components, component hierarchy |
| State management | Redux, Zustand, Pinia, Context, signals |
| Routing | Client-side routing config (React Router, Next.js pages/app) |
| Styling system | CSS modules, Tailwind config, styled-components, design tokens |
| Accessibility | ARIA attributes, semantic HTML, a11y testing |
| Responsive design | Media queries, breakpoint definitions, responsive utilities |

---

## observability

| Signal | What to look for |
|--------|-----------------|
| Logging | Structured logging (Winston, Pino, structlog), log levels |
| Metrics | Prometheus metrics, StatsD, custom counters/histograms |
| Tracing | OpenTelemetry setup, span creation, trace context propagation |
| Health endpoints | `/health`, `/ready`, `/metrics` routes |
| Error tracking | Sentry, Bugsnag, Application Insights integration |
| Dashboards | Grafana configs, dashboard-as-code |

---

## Detection threshold

A domain is **detected** when 2 or more signals from its table are present in the project. Report only detected domains to the canvas. Do not report domains with 0–1 signals.
