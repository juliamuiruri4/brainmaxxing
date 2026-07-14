# Security Fundamentals — Concept Inventory

Core concepts the Security Fundamentals quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Authentication

- **Password hashing**: bcrypt, argon2, scrypt — why plain-text or SHA-256 is insufficient
- **Salt**: Random data added before hashing to prevent rainbow table attacks
- **Work factor**: Cost parameter that makes brute force slower as hardware improves
- **Token-based auth**: JWTs, opaque tokens — stateless vs. stateful sessions
- **Session management**: Creation, expiration, invalidation, secure cookie flags
- **Multi-factor authentication**: Something you know + something you have/are
- **OAuth2/OIDC**: Delegating authentication to identity providers

## Authorization

- **Authentication vs. authorization**: Proving identity vs. proving permission
- **RBAC**: Role-based access control — users have roles, roles have permissions
- **ABAC**: Attribute-based access control — policies based on user/resource/environment attributes
- **Principle of least privilege**: Only grant the minimum access needed
- **Authorization placement**: Checking permissions in middleware vs. service layer vs. database
- **Resource-level authorization**: Can this user access this specific resource (not just this endpoint)?

## Input Validation

- **Validation location**: Validate at system boundaries (API layer), not just client-side
- **Allow-lists vs. deny-lists**: Specify what's allowed rather than what's blocked
- **Type coercion**: Ensuring inputs are the expected type before processing
- **Length limits**: Preventing denial of service through oversized payloads
- **Schema validation**: Using structured validators (Zod, Joi, JSON Schema)

## Common Vulnerabilities

- **SQL injection**: Untrusted input in SQL queries — parameterized queries as defense
- **XSS (Cross-Site Scripting)**: Untrusted data rendered as HTML/JS — output encoding as defense
- **CSRF (Cross-Site Request Forgery)**: Unauthorized actions from authenticated sessions — tokens as defense
- **IDOR (Insecure Direct Object Reference)**: Accessing resources by guessing IDs without authorization checks
- **Mass assignment**: Accepting all user-provided fields without filtering

## Transport Security

- **HTTPS/TLS**: Encrypting data in transit between client and server
- **CORS**: Controlling which origins can make requests to your API
- **Security headers**: Content-Security-Policy, X-Frame-Options, Strict-Transport-Security
- **Certificate pinning**: Preventing man-in-the-middle attacks by trusting specific certificates

## Secrets Management

- **Environment variables**: Keeping secrets out of source code
- **Secret rotation**: Regularly changing credentials to limit exposure window
- **.env files and .gitignore**: Never committing secrets to version control
- **Vault services**: Centralized secret storage with access auditing
- **Principle of separation**: Different secrets per environment (dev, staging, production)

## Data Protection

- **Encryption at rest**: Protecting stored sensitive data
- **Encryption in transit**: TLS for all network communication
- **Data classification**: Knowing what's sensitive (PII, credentials, payment data)
- **Data minimization**: Only collecting and storing what's necessary
- **Secure deletion**: Actually removing data when it should be gone

## Audit & Logging

- **Security event logging**: Recording auth attempts, permission changes, data access
- **Log sanitization**: Never logging passwords, tokens, or sensitive data
- **Tamper-evident logs**: Protecting audit trails from modification
- **Rate limiting**: Preventing brute force by throttling repeated attempts
