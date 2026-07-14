# Implementation Patterns — Concept Inventory

Core concepts the Implementation Patterns quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Separation of Concerns

- **Single Responsibility**: Each module/class/function does one thing well
- **Layer separation**: Controllers don't contain business logic; services don't do I/O formatting
- **Interface segregation**: Clients only depend on methods they use
- **Cohesion**: Related functionality grouped together, unrelated functionality separated

## Creational Patterns

- **Factory functions**: Creating objects without exposing instantiation logic
- **Builder pattern**: Step-by-step construction of complex objects
- **Singleton**: Single shared instance — when appropriate, when problematic
- **Dependency injection**: Providing dependencies from outside rather than creating internally

## Structural Patterns

- **Repository pattern**: Abstracting data access behind a collection-like interface
- **Adapter pattern**: Translating between incompatible interfaces
- **Facade pattern**: Simplified interface to a complex subsystem
- **Middleware/pipeline**: Composable processing stages in sequence
- **Decorator pattern**: Wrapping objects to add behavior without modifying the original

## Behavioral Patterns

- **Strategy pattern**: Swappable algorithms behind a common interface
- **Observer/event pattern**: Decoupled notification when state changes
- **Command pattern**: Encapsulating operations as objects (undo, queue, log)
- **State machines**: Explicit states and transitions for complex lifecycle objects

## Error Handling Patterns

- **Custom error types**: Domain-specific errors with structured information
- **Error hierarchies**: Base error classes with specialized subtypes
- **Result types**: Returning success/failure without exceptions (Either, Result)
- **Error boundaries**: Catching errors at specific layers, converting between error types
- **Fail fast**: Validating preconditions early, throwing immediately on invalid state

## Abstraction & Types

- **Interfaces/protocols**: Defining contracts without implementation
- **Generics**: Type-safe reusable code without duplication
- **Type narrowing**: Discriminated unions, type guards, exhaustive checks
- **Opaque types**: Preventing accidental misuse of primitive values (UserId vs. string)

## Module Organization

- **Feature folders**: Grouping by domain feature rather than technical layer
- **Barrel files**: Re-exporting public API from a module
- **Dependency direction**: Imports flow inward (infrastructure → application → domain)
- **Circular dependencies**: Why they're problematic, how to break cycles
- **Colocation**: Keeping related files together (component + test + styles)

## Composition

- **Composition over inheritance**: Building behavior by combining small pieces
- **Higher-order functions**: Functions that take or return other functions
- **Mixins/traits**: Sharing behavior across unrelated types
- **Plugin architecture**: Extensibility through registration rather than modification
