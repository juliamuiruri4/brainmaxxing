# UI & Frontend — Concept Inventory

Core concepts the UI & Frontend quiz can draw from. Questions should only target concepts that are evidenced in the student's codebase.

---

## Component Architecture

- **Component decomposition**: Breaking UI into reusable, focused pieces
- **Props vs. state**: Data passed in vs. data managed internally
- **Composition over configuration**: Building complex UI by combining simple components
- **Presentational vs. container**: Components that render vs. components that manage logic
- **Component lifecycle**: Mount, update, unmount — side effects at each stage

## State Management

- **Local state**: State owned by a single component (form inputs, toggles)
- **Lifted state**: Moving state to a common ancestor when siblings need to share
- **Global state**: Application-wide state (auth status, theme, user preferences)
- **Server state**: Data from the backend (fetched, cached, synchronized)
- **Derived state**: Values computed from other state (filtered list, total count)
- **State normalization**: Flat structures vs. nested, avoiding duplication

## Rendering

- **Virtual DOM / reconciliation**: How frameworks decide what to update in the real DOM
- **Re-render triggers**: What causes a component to re-render (state change, prop change, parent re-render)
- **Memoization**: Preventing unnecessary re-renders (React.memo, useMemo, computed)
- **Conditional rendering**: Showing/hiding content based on state
- **List rendering**: Keys and why they matter for efficient updates
- **Server-side rendering**: Pre-rendering on the server for performance and SEO

## Data Fetching

- **Fetch on mount**: Loading data when a component appears
- **Loading states**: Showing spinners/skeletons while data is loading
- **Error states**: Displaying meaningful messages when fetches fail
- **Caching**: Avoiding redundant requests (SWR, React Query, TanStack Query)
- **Optimistic updates**: Updating UI before the server confirms
- **Pagination/infinite scroll**: Loading data incrementally

## Routing

- **Client-side routing**: Navigating without full page reloads
- **Route parameters**: Dynamic segments in URLs (/users/:id)
- **Nested routes**: Route hierarchy matching UI hierarchy
- **Route guards**: Protecting routes based on auth state
- **Code splitting**: Loading route code on demand (lazy loading)

## Styling

- **CSS Modules**: Scoped styles per component
- **Utility-first (Tailwind)**: Composing styles from small utility classes
- **CSS-in-JS**: Styles defined in JavaScript (styled-components, emotion)
- **Design tokens**: Shared values for colors, spacing, typography
- **Responsive design**: Adapting layout to different screen sizes
- **Theming**: Supporting multiple visual themes (dark mode, brand variants)

## Accessibility

- **Semantic HTML**: Using correct elements (button, nav, main, article)
- **ARIA attributes**: Adding context for assistive technology when semantics aren't enough
- **Keyboard navigation**: All interactions accessible without a mouse
- **Focus management**: Moving focus appropriately (modals, route changes)
- **Color contrast**: Sufficient contrast ratios for readability
- **Screen reader testing**: Verifying the experience for non-visual users

## Forms & Interaction

- **Controlled vs. uncontrolled inputs**: Managing form state explicitly vs. letting the DOM handle it
- **Form validation**: Client-side feedback (inline errors, submit-time validation)
- **Debouncing/throttling**: Limiting how often expensive operations run (search-as-you-type)
- **Event handling**: Bubbling, delegation, preventing defaults
- **Drag and drop**: Complex interactions and their accessibility implications
