# Testing Strategy — Concept Inventory

Core concepts the Testing Strategy quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Test Pyramid

- **Unit tests**: Testing isolated units (functions, classes) with dependencies mocked
- **Integration tests**: Testing components working together with real dependencies
- **End-to-end tests**: Testing full user flows through the entire system
- **Contract tests**: Verifying interface agreements between services
- **Pyramid economics**: Many unit tests (fast, cheap), fewer integration tests, fewest E2E tests (slow, expensive)

## Test Design

- **Arrange-Act-Assert**: Setup, execute, verify — the standard test structure
- **Given-When-Then**: BDD-style test organization for behavior specification
- **Test naming**: Descriptive names that explain what's being tested and expected behavior
- **One assertion per test**: Each test verifies one behavior (with caveats for related assertions)
- **Test independence**: Tests don't depend on execution order or shared mutable state

## Test Doubles

- **Mocks**: Objects that verify interactions (was this method called with these args?)
- **Stubs**: Objects that return predetermined responses (no behavior verification)
- **Fakes**: Working implementations with shortcuts (in-memory database)
- **Spies**: Real objects that also record interactions
- **When to mock**: External services, I/O, time, randomness — not internal implementation details

## Test Data

- **Factories**: Functions that create test objects with sensible defaults
- **Fixtures**: Pre-built data sets loaded before tests
- **Builders**: Step-by-step test data construction for complex objects
- **Randomized data**: Property-based testing, fuzz testing
- **Minimal data**: Only include what's relevant to the test being written

## Coverage

- **Line coverage**: Which lines were executed — necessary but not sufficient
- **Branch coverage**: Which conditional paths were taken
- **Coverage as a metric**: High coverage doesn't mean good tests; low coverage means gaps
- **Critical path coverage**: Business logic should have higher coverage than glue code
- **Mutation testing**: Changing code to verify tests actually catch bugs

## Testing Patterns

- **Test isolation**: Each test runs independently, cleans up after itself
- **Test hooks**: beforeEach/afterEach, setup/teardown — shared setup without shared state
- **Parameterized tests**: Same test logic with different inputs (test.each, @pytest.mark.parametrize)
- **Snapshot testing**: Capturing output and comparing to stored baseline
- **Golden file testing**: Comparing complex output against approved reference files

## Integration Testing

- **Database tests**: Testing with real databases (testcontainers, in-memory DBs)
- **API tests**: Testing HTTP endpoints with real request/response cycles
- **External service tests**: Testing against real APIs vs. recorded responses (VCR, nock)
- **Test environments**: Isolated environments that mirror production

## What to Test

- **Happy path**: Normal expected behavior works correctly
- **Edge cases**: Boundary values, empty inputs, maximum lengths
- **Error paths**: Invalid input, network failures, timeouts produce correct behavior
- **Regression tests**: Tests added for bugs that were found and fixed
- **Security tests**: Authentication, authorization, input validation boundaries
