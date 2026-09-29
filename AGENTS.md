# Repository Guidelines

## Project Structure & Module Organization

This repository is a Vite-powered React 18 and TypeScript POS application. Application entry points are `src/main.tsx` and `src/App.tsx`. Organize feature UI under `src/components/` (for example, `pos/`, `inventory/`, `customers/`, and `reports/`), shared state in `src/context/`, reusable integrations and helpers in `src/lib/`, and shared types in `src/types/`. Global styles live in `src/index.css`; static assets belong in `public/`. The Supabase schema and initialization script are in `supabase_init.sql`.

## Build, Test, and Development Commands

Run these commands from the repository root:

```bash
npm install       # install dependencies
npm run dev       # start the Vite development server
npm run build     # create a production build in dist/
npm run lint      # run ESLint across the project
npm run preview   # serve the production build locally
```

There is currently no automated test script configured. Run `npm run lint` and `npm run build` before submitting changes, and manually verify affected POS, authentication, and Supabase flows.

## Coding Style & Naming Conventions

Use TypeScript and functional React components. Follow the existing ESLint configuration, two-space indentation, and semicolons. Use `PascalCase` for React component files and components (`ProductGrid.tsx`), `camelCase` for helpers, hooks, variables, and functions, and descriptive feature-based directories. Prefer existing Tailwind utility patterns and shared context/services over duplicated state or styling. Keep Supabase access in `src/lib/` or the relevant context rather than embedding queries throughout presentation components.

## Testing Guidelines

No test framework or coverage threshold is currently defined. For new business logic, keep code easy to test by isolating calculations and service calls from UI components; add a test framework and npm script when introducing substantial automated coverage.

## Commit & Pull Request Guidelines

Use concise imperative commit subjects, such as `Add inventory low-stock filter` or `Fix checkout payment validation`. Pull requests should explain the user-visible change, identify configuration or database updates, include verification commands and results, and attach screenshots or recordings for UI changes. Call out any required Supabase migrations or environment variables explicitly.

## Security & Configuration

Keep local secrets in `.env.local` or another ignored environment file; never commit service-role keys or credentials. Treat Supabase Row Level Security policies and `supabase_init.sql` changes as security-sensitive, and verify permissions for every affected table or operation.
