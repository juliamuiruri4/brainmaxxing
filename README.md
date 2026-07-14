# BrainMaxxing

Agent skills that quiz students on software engineering concepts grounded in their actual codebase. Designed for early-career developers who co-create projects with AI and need to verify their conceptual understanding.

## The problem

AI coding agents make it easy to build sophisticated software without fully understanding the concepts behind it. BrainMaxxing helps students verify whether they actually understand what's in their project — or if they're just running code they can't explain.

## How it works

1. **Invoke `/brainmax`** in your project
2. The agent analyzes your codebase and detects which knowledge domains are implemented
3. You pick a domain (API Design, Database Design, Testing, etc.)
4. The agent quizzes you with 5 questions grounded in *your actual code*
5. Each answer is scored on a 0–3 rubric
6. When done, say "compile report" to get your competency summary with personalized study recommendations

## Skills

| Skill | What it quizzes |
|-------|----------------|
| `/brainmax` | Orchestrator — detects domains, routes to quizzes, compiles report |
| `/api-design` | REST/GraphQL/gRPC design, HTTP semantics, middleware |
| `/database-design` | Schema design, normalization, queries, migrations |
| `/system-architecture` | Service boundaries, communication, infrastructure |
| `/implementation-patterns` | Design patterns, abstractions, code organization |
| `/testing-strategy` | Test design, mocking, coverage, test pyramid |
| `/security-fundamentals` | Auth, validation, encryption, OWASP concepts |
| `/devops-and-ci-cd` | Pipelines, deployment, infrastructure as code |
| `/error-handling-and-resilience` | Retries, circuit breakers, graceful degradation |
| `/requirements-and-scope` | Requirements engineering, scope management |
| `/domain-modeling` | DDD concepts, aggregates, business rules |
| `/ui-and-frontend` | Component architecture, state, rendering, accessibility |
| `/observability` | Logging, metrics, tracing, health checks |

## Installation

```bash
npx skills add brainmaxxing
```

## Design principles

- **Read-only**: Skills analyze code, never edit it
- **Grounded**: Every question references specific code in the student's project
- **Honest**: Never fabricates bugs, issues, or code that doesn't exist
- **One-at-a-time**: Questions are asked sequentially, not batched
- **Rubric-scored**: All answers scored on a consistent 0–3 rubric

## Canvas extension

The `extensions/brainmax-canvas/` directory contains an optional GitHub Copilot App canvas extension that provides an interactive dashboard with domain buttons, progress tracking, and visual report generation.

## License

MIT
