# API Design — Concept Inventory

Core concepts the API Design quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## HTTP Semantics

- **Method selection**: GET (read), POST (create), PUT (full replace), PATCH (partial update), DELETE (remove)
- **Idempotency**: GET, PUT, DELETE are idempotent; POST is not. Why this matters for retries and caching.
- **Safety**: GET and HEAD are safe (no side effects). Implications for caching and prefetching.
- **Content negotiation**: Accept headers, Content-Type, response format selection

## Resource Design

- **Resource naming**: Nouns not verbs, plural collections, nested resources for relationships
- **URI structure**: Hierarchical paths representing ownership/containment
- **Collection vs. item**: `/users` (collection) vs. `/users/:id` (item)
- **Sub-resources**: When to nest (`/users/:id/posts`) vs. flatten (`/posts?userId=:id`)
- **Query parameters**: Filtering, sorting, pagination — when to use query params vs. path params

## Status Codes

- **2xx success**: 200 (OK), 201 (Created), 204 (No Content) — when to use each
- **3xx redirection**: 301 (Moved Permanently), 304 (Not Modified) — caching implications
- **4xx client error**: 400 (Bad Request), 401 (Unauthorized), 403 (Forbidden), 404 (Not Found), 409 (Conflict), 422 (Unprocessable Entity)
- **5xx server error**: 500 (Internal Server Error), 502 (Bad Gateway), 503 (Service Unavailable)
- **Semantic precision**: Why 401 vs 403 matters; why 404 vs 410 matters

## Request Validation

- **Input validation**: Checking types, ranges, formats, required fields before processing
- **Validation location**: Where validation happens (middleware, controller, service layer)
- **Error response format**: Consistent error objects with machine-readable codes and human-readable messages
- **Fail fast**: Rejecting bad input early vs. processing and failing later

## Middleware & Pipeline

- **Middleware ordering**: Why order matters (auth before validation, logging wrapping everything)
- **Cross-cutting concerns**: What belongs in middleware (auth, logging, CORS, rate limiting) vs. in handlers
- **Request lifecycle**: How a request flows through the middleware stack to the handler and back
- **Error middleware**: Centralized error handling vs. per-route try/catch

## Authentication & Authorization

- **Authentication**: Proving identity (tokens, sessions, API keys)
- **Authorization**: Proving permission (roles, scopes, policies)
- **Token placement**: Bearer tokens, cookies, API keys in headers
- **Route protection**: Which routes need auth, which are public, why

## Pagination & Filtering

- **Offset pagination**: `?page=2&limit=20` — simple but has performance and consistency issues at scale
- **Cursor pagination**: `?after=abc123&limit=20` — stable under inserts/deletes
- **Filtering patterns**: Query parameter conventions, filter operators
- **Sorting**: `?sort=created_at&order=desc` — multiple sort keys, default behavior

## Versioning

- **URL versioning**: `/v1/users` — explicit, simple, breaks caching across versions
- **Header versioning**: `Accept: application/vnd.api+json;version=1` — cleaner URLs, harder to discover
- **Breaking vs. non-breaking changes**: Adding fields is non-breaking; removing/renaming is breaking
- **Deprecation strategy**: How to sunset old versions gracefully

## Error Handling

- **Consistent error format**: Same error shape across all endpoints
- **Error codes**: Machine-readable codes for programmatic handling
- **Validation errors**: Per-field error reporting for form-like inputs
- **Internal vs. external errors**: What to expose to clients vs. what to log internally

## API Documentation

- **OpenAPI/Swagger**: Describing endpoints, schemas, examples
- **Self-documenting design**: Good naming and consistent patterns reduce documentation burden
- **Examples**: Request/response examples for each endpoint
- **Contracts**: API as a contract between frontend and backend teams
