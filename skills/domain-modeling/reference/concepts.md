# Domain Modeling — Concept Inventory

Core concepts the Domain Modeling quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Entities & Value Objects

- **Entities**: Objects with identity — two instances with the same data are still different (User, Order)
- **Value Objects**: Objects defined by their attributes — two instances with the same data are equal (Money, Email, DateRange)
- **Identity**: What makes an entity unique (ID, natural key)
- **Immutability**: Value objects shouldn't change; create new ones instead
- **Equality**: Entities compared by ID, value objects compared by attributes

## Aggregates

- **Aggregate root**: The entry point that enforces consistency rules for a cluster of objects
- **Consistency boundary**: What must be consistent within a single transaction
- **Invariants**: Business rules that must always hold true within an aggregate
- **Reference by ID**: Aggregates reference other aggregates by ID, not direct object reference
- **Small aggregates**: Keep them small — large aggregates create contention and performance issues

## Domain Events

- **What triggers them**: State changes that are significant to the business
- **Naming**: Past tense verbs describing what happened (OrderPlaced, PaymentReceived)
- **Event payload**: What data the event carries (enough for consumers to act)
- **Event handling**: Synchronous vs. asynchronous processing of events
- **Event sourcing**: Storing events as the source of truth, rebuilding state from them

## Business Rules

- **Invariants**: Rules that must always be true (account balance >= 0)
- **Validation vs. invariants**: Input format checking vs. business rule enforcement
- **Rule placement**: Business rules belong in domain objects, not in controllers or services
- **Complex rules**: Multi-entity rules, temporal rules (can only cancel within 24 hours)
- **Rule expression**: Specification pattern, policy objects, predicate functions

## Bounded Contexts

- **Context boundaries**: Where one model ends and another begins
- **Same word, different meaning**: "Product" in inventory vs. "Product" in shipping
- **Context mapping**: How contexts relate (upstream/downstream, conformist, anti-corruption layer)
- **Shared kernel**: Small, jointly-owned model between two contexts
- **Separate models**: Each context has its own representation of shared concepts

## Ubiquitous Language

- **Code reflects business language**: Class, method, and variable names match domain expert terminology
- **No translation layer**: Developers and domain experts use the same words
- **Glossary**: Agreed-upon definitions for domain terms
- **Refactoring toward insight**: Renaming code when understanding deepens

## Services

- **Domain services**: Operations that don't belong to a single entity (TransferMoney between accounts)
- **Application services**: Orchestration that coordinates domain objects (use case handlers)
- **Infrastructure services**: Technical concerns (email sending, file storage)
- **Stateless**: Domain services don't hold state; they operate on entities and value objects

## Anti-Patterns

- **Anemic domain model**: Objects with only getters/setters, all logic in service classes
- **God object**: One class that knows everything and does everything
- **Primitive obsession**: Using strings/ints instead of value objects (email as string vs. Email type)
- **Leaking domain logic**: Business rules scattered across controllers, views, or infrastructure
