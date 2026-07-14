# Error Handling & Resilience — Concept Inventory

Core concepts the Error Handling & Resilience quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Error Classification

- **Expected errors**: Invalid user input, resource not found — handle gracefully
- **Unexpected errors**: Null references, out-of-memory, hardware failures — fail safely
- **Recoverable vs. unrecoverable**: Can the operation be retried or must it abort?
- **Transient vs. permanent**: Network blip (retry) vs. invalid credentials (don't retry)
- **Domain errors vs. infrastructure errors**: Business rule violations vs. system failures

## Error Propagation

- **Throw vs. return**: When to throw exceptions vs. return error values
- **Error boundaries**: Where errors are caught, logged, and translated
- **Error wrapping**: Adding context while preserving the original error (cause chains)
- **Layer translation**: Converting low-level errors to domain-appropriate messages
- **Unhandled rejection/exception**: What happens when nothing catches an error

## Retry Patterns

- **Simple retry**: Try again immediately — only appropriate for truly transient failures
- **Exponential backoff**: Increasing delay between retries to avoid thundering herd
- **Jitter**: Adding randomness to backoff to prevent synchronized retries
- **Max retries**: Giving up after N attempts to avoid infinite loops
- **Idempotency requirement**: Only safe to retry operations that produce the same result

## Circuit Breaker

- **Closed state**: Normal operation, requests pass through
- **Open state**: Failing fast, preventing requests from reaching a broken dependency
- **Half-open state**: Allowing test requests through to check recovery
- **Failure threshold**: How many failures trigger the circuit to open
- **Recovery time**: How long before attempting to close the circuit again

## Timeouts

- **Connection timeout**: How long to wait to establish a connection
- **Request timeout**: How long to wait for a response
- **Cascading timeouts**: Downstream timeouts must be shorter than upstream timeouts
- **Timeout budget**: Total time allocated across multiple sequential calls
- **Consequences of no timeout**: Blocked threads, resource exhaustion, cascading failures

## Graceful Degradation

- **Fallback values**: Default or cached data when primary source is unavailable
- **Feature degradation**: Disabling non-critical features to preserve core functionality
- **Bulkheading**: Isolating failures to prevent them from affecting the whole system
- **Load shedding**: Rejecting requests under extreme load to protect the system
- **Partial responses**: Returning what you have even if not everything succeeded

## Error Reporting

- **Structured errors**: Consistent error format with code, message, details
- **User-facing vs. internal**: Safe messages for users, detailed context for developers
- **Error logging**: What to include (stack trace, context, request ID) and what to exclude (secrets)
- **Error aggregation**: Grouping similar errors, tracking frequency, alerting on spikes
- **Correlation IDs**: Tracing an error across multiple services/components

## Health & Recovery

- **Health checks**: Endpoints that report system status
- **Liveness vs. readiness**: "Am I running?" vs. "Am I ready to handle requests?"
- **Graceful shutdown**: Completing in-flight requests before stopping
- **Self-healing**: Automatic recovery mechanisms (restart policies, auto-scaling)
- **Chaos engineering**: Intentionally introducing failures to test resilience
