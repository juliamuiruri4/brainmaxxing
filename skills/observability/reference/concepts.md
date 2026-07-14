# Observability — Concept Inventory

Core concepts the Observability quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Three Pillars

- **Logs**: Discrete events — what happened, when, with what context
- **Metrics**: Aggregated measurements over time — counters, gauges, histograms
- **Traces**: Request paths across components — latency, dependencies, bottlenecks
- **Relationship**: Logs give detail, metrics give trends, traces give flow — they complement each other

## Logging

- **Structured logging**: Key-value pairs (JSON) vs. unstructured text — queryability
- **Log levels**: DEBUG, INFO, WARN, ERROR, FATAL — when to use each
- **Context enrichment**: Adding request ID, user ID, operation name to every log
- **Log sanitization**: Never logging passwords, tokens, PII
- **Log volume management**: Not logging too much (noise) or too little (blind spots)
- **Correlation IDs**: Unique ID per request that follows it through all components

## Metrics

- **Counter**: Monotonically increasing value (total requests, total errors)
- **Gauge**: Value that goes up and down (current connections, queue depth)
- **Histogram**: Distribution of values (request duration, response size)
- **RED method**: Rate, Errors, Duration — key metrics for services
- **USE method**: Utilization, Saturation, Errors — key metrics for resources
- **Cardinality**: Why high-cardinality labels (user_id) are expensive

## Distributed Tracing

- **Spans**: Individual operations with start time, duration, and metadata
- **Trace context propagation**: Passing trace IDs across service boundaries
- **Parent-child relationships**: How spans nest to show call hierarchy
- **Sampling**: Only recording a percentage of traces to manage volume
- **OpenTelemetry**: Vendor-neutral instrumentation standard

## Health Checks

- **Liveness probe**: "Is the process running?" — restart if not
- **Readiness probe**: "Can it handle requests?" — stop routing if not
- **Dependency checks**: Verifying database, cache, and external service connectivity
- **Shallow vs. deep health checks**: Simple pong vs. checking all dependencies
- **Startup probes**: Allowing time for initialization before checking health

## Alerting

- **SLIs (Service Level Indicators)**: Measurable aspects of service behavior (latency, availability)
- **SLOs (Service Level Objectives)**: Target values for SLIs (99.9% availability)
- **Error budgets**: Allowed failure within SLO — spend it on velocity, conserve it on stability
- **Alert fatigue**: Too many alerts → people ignore them all
- **Actionable alerts**: Every alert should tell you what to do, not just that something happened
- **Runbooks**: Step-by-step instructions linked from alerts

## Debugging in Production

- **Request tracing**: Following a single request through the system
- **Log aggregation**: Centralized search across all services (ELK, CloudWatch, Datadog)
- **Dashboards**: Visual representation of system health at a glance
- **Anomaly detection**: Identifying unusual patterns in metrics
- **Post-mortem analysis**: Using observability data to understand incidents after the fact
