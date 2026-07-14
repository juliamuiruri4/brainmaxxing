# Database Design — Concept Inventory

Core concepts the Database Design quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Normalization

- **1NF**: Atomic values, no repeating groups
- **2NF**: No partial dependencies (all non-key attributes depend on the full key)
- **3NF**: No transitive dependencies (non-key attributes don't depend on other non-key attributes)
- **Denormalization**: Intentionally duplicating data for read performance — when and why
- **Tradeoffs**: Normalization reduces redundancy but increases joins; denormalization improves reads but complicates writes

## Relationships

- **One-to-one**: When to split into separate tables vs. keep in one
- **One-to-many**: Foreign keys, parent-child relationships, cascade behavior
- **Many-to-many**: Junction/join tables, composite keys
- **Self-referencing**: Trees, hierarchies, adjacency lists
- **Polymorphic associations**: One foreign key referencing multiple table types — patterns and pitfalls

## Keys & Constraints

- **Primary keys**: Natural vs. surrogate keys, auto-increment vs. UUID tradeoffs
- **Foreign keys**: Referential integrity, what they enforce at the database level
- **Unique constraints**: Preventing duplicates, compound uniqueness
- **Check constraints**: Domain validation at the database level
- **NOT NULL**: When to enforce vs. allow nulls, nullable foreign keys

## Indexes

- **Purpose**: Speed up reads at the cost of write performance and storage
- **B-tree indexes**: Default index type, good for equality and range queries
- **Composite indexes**: Column order matters, leftmost prefix rule
- **Covering indexes**: Including all columns needed by a query
- **When to index**: High-selectivity columns, frequently filtered/sorted columns
- **When not to index**: Small tables, rarely queried columns, high-write tables

## Migrations

- **Forward migrations**: Schema changes that evolve the database
- **Rollback migrations**: Undoing changes safely
- **Data migrations**: Transforming existing data alongside schema changes
- **Ordering**: Why migration order matters, dependency chains
- **Safety**: Non-destructive changes, zero-downtime migrations, additive-first approach

## Queries & Performance

- **N+1 problem**: Querying in a loop instead of batching — how to detect and fix
- **Eager vs. lazy loading**: When to load related data upfront vs. on demand
- **Query planning**: How databases decide execution strategy
- **Pagination**: Offset vs. cursor pagination at the database level
- **Aggregations**: GROUP BY, HAVING, window functions — when to compute in DB vs. application

## Transactions

- **ACID properties**: Atomicity, Consistency, Isolation, Durability
- **Isolation levels**: Read uncommitted, read committed, repeatable read, serializable
- **Deadlocks**: How they occur, how to prevent them
- **Transaction scope**: Keeping transactions short, what to include vs. exclude
- **Optimistic vs. pessimistic locking**: When to use each

## Schema Design Patterns

- **Soft deletes**: `deleted_at` timestamps vs. hard deletes — tradeoffs
- **Audit trails**: `created_at`, `updated_at`, who-changed-what tracking
- **Enums vs. lookup tables**: When to use database enums vs. reference tables
- **JSON columns**: When structured data in a JSON column is appropriate vs. when to normalize
- **Temporal data**: Effective dates, historical records, slowly changing dimensions
