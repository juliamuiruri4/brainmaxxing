# DevOps & CI/CD — Concept Inventory

Core concepts the DevOps & CI/CD quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Continuous Integration

- **Purpose**: Detect integration problems early by merging and testing frequently
- **Build triggers**: On push, on PR, on schedule — when each is appropriate
- **Pipeline steps**: Lint → test → build → deploy — why this order matters
- **Fail fast**: Cheap checks (lint, type check) run before expensive ones (integration tests)
- **Parallelization**: Running independent jobs concurrently to reduce pipeline time
- **Caching**: Caching dependencies and build artifacts between runs

## Continuous Delivery/Deployment

- **CD vs. CD**: Continuous Delivery (manual approval to production) vs. Continuous Deployment (automatic)
- **Deployment strategies**: Blue/green, canary, rolling — tradeoffs of each
- **Zero-downtime deployment**: Ensuring users don't experience outages during deploys
- **Rollback mechanisms**: How to quickly revert a bad deployment
- **Feature flags**: Deploying code that isn't active, enabling per-user or percentage rollout

## Build & Artifacts

- **Reproducible builds**: Same source always produces same output
- **Artifact versioning**: Tagging builds with commit SHA, semantic version, or timestamp
- **Immutable artifacts**: Build once, deploy the same artifact to all environments
- **Docker image optimization**: Multi-stage builds, layer ordering, minimal base images
- **Build caching**: Reusing previous work to speed up builds

## Environment Management

- **Environment parity**: Dev, staging, production should be as similar as possible
- **Environment promotion**: Artifacts move through environments (dev → staging → prod)
- **Environment-specific config**: What changes between environments (URLs, secrets, feature flags)
- **Ephemeral environments**: Spin-up/tear-down environments per PR for testing
- **Infrastructure as Code**: Declaring environments in version-controlled files

## Pipeline Security

- **Secret management in CI**: Using vault/encrypted variables, never hardcoding in pipeline files
- **Least privilege runners**: CI agents only have permissions they need
- **Dependency scanning**: Checking for known vulnerabilities in dependencies
- **SAST/DAST**: Static and dynamic analysis in the pipeline
- **Supply chain security**: Pinning dependencies, verifying checksums, signed commits

## Infrastructure as Code

- **Declarative vs. imperative**: Describing desired state vs. step-by-step commands
- **State management**: How IaC tools track what's deployed (state files, drift detection)
- **Modularity**: Reusable infrastructure modules/components
- **Plan before apply**: Previewing changes before executing them
- **Idempotency**: Running the same IaC multiple times produces the same result

## Monitoring & Feedback

- **Deployment health checks**: Verifying a deployment is healthy before completing
- **Smoke tests**: Quick post-deploy verification that critical paths work
- **Pipeline notifications**: Alerting on failures, communicating deployment status
- **Deployment frequency**: Tracking how often you ship as a health metric
- **Lead time**: Time from commit to production — shorter is generally better
