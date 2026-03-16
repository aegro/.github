# Contributing to Aegro

Guidelines for contributing to Aegro repositories. For detailed documentation on each topic, see the links in [Useful links](#useful-links).

## Initial setup

Run the bootstrap script to apply the standard Git configuration:

```bash
bash <(curl -s https://raw.githubusercontent.com/aegro/.github/dev/scripts/setup-dev.sh)
```

This sets `dev` as the default branch and configures line ending normalization. For the full onboarding guide, see [Git Setup](https://docs.aegro.io/onboarding/git-setup).

## Branches

We follow a `dev` → `staging` → `production` flow:

| Branch | Purpose |
|--------|---------|
| `dev` | Main development branch (default) |
| `staging` | Pre-production testing |
| `production` | Stable production code |

Feature/fix branches follow the naming convention:

| Type | Pattern | Example |
|------|---------|---------|
| Issue work | `[issueType]/[issueCode-branchName]` | `feat/AEGRO-1234-crop-rotation` |
| Hotfix | `hotfix/[issueCode-branchName]` | `hotfix/AEGRO-5678-fix-cost-calc` |
| Experimental | `experimental/[description]` | `experimental/graphql-gateway` |

Always branch from `dev` for regular work. Hotfixes branch from `production`.

## Commits

We use [Conventional Commits](https://www.conventionalcommits.org/en/v1.0.0/):

| Prefix | When to use |
|--------|-------------|
| `feat:` | New feature |
| `fix:` | Bug fix |
| `refactor:` | Refactoring without behavior change |
| `test:` | Adding or modifying tests |
| `chore:` | Tooling, linting, config changes |
| `docs:` | Documentation |
| `build:` | Build process or dependencies |
| `perf:` | Performance improvement |
| `ci:` | CI configuration |
| `style:` | Formatting without functional change |
| `revert:` | Reverting a previous commit |

## Pull Requests

- **Minimum 1 reviewer**, preferably from the same product team
- **48h SLA** for reviewers to complete their review
- The **author merges** the PR once all conditions are met:
  - All reviewers approved
  - Pipeline is green
  - No conflicts with the target branch
- Keep PRs **small and focused** — large PRs are harder to review, cause more conflicts, and are harder to revert

## Code Review

- Review the **code**, not the author — respect agreed-upon patterns, don't impose personal taste
- Scope covers both **technical and functional** analysis
- Limit review sessions to **200–400 lines** — attention drops significantly beyond that
- Fix static analysis issues **before** requesting human review
- Use facts and data over personal preferences

For the full review process, see [Code Review Guide](https://docs.aegro.io/guides/development/code-review).

## Technical decisions

Significant changes follow a structured process:

1. **RFC** — open a GitHub Discussion (category "RFC") to propose and discuss
2. **ADR** — after the RFC is accepted, record the decision as an Architecture Decision Record
3. **Tech Debt** — recognized technical debt goes into a GitHub Discussion (category "Tech Debt")

Not every decision needs an RFC. Use your judgment — the bigger the impact, the more discussion it deserves. When in doubt, document it.

> **Setup:** as categorias "RFC" e "Tech Debt" precisam ser criadas manualmente em cada repo (Settings → Discussions). Os templates de Discussion deste repo (`rfc.yml`, `tech-debt.yml`) são herdados automaticamente, mas só aparecem se a categoria correspondente existir.

See [Technical Decisions](https://docs.aegro.io/guides/development/decisions) for the full process.

## Conventions

- **Language**: code in English (names, comments, documentation)
- **Casing**: PascalCase for classes/interfaces/enums, camelCase for methods/variables, SCREAMING_SNAKE_CASE for constants
- **No abbreviations**: `transaction` not `tx`, `repository` not `repo`
- **No commented-out code**: use version control
- **Comments**: explain *why*, not *what*

For the complete coding conventions, see [General Conventions](https://docs.aegro.io/patterns/code/conventions-general) and [Naming Conventions](https://docs.aegro.io/patterns/code/conventions-naming-complete).

## Useful links

| Resource | Link |
|----------|------|
| Git & Repositories | [docs.aegro.io/patterns/repositories](https://docs.aegro.io/patterns/repositories) |
| Branching & Merges | [docs.aegro.io/guides/development/branching-and-merges](https://docs.aegro.io/guides/development/branching-and-merges) |
| Code Review | [docs.aegro.io/guides/development/code-review](https://docs.aegro.io/guides/development/code-review) |
| Technical Decisions | [docs.aegro.io/guides/development/decisions](https://docs.aegro.io/guides/development/decisions) |
| General Conventions | [docs.aegro.io/patterns/code/conventions-general](https://docs.aegro.io/patterns/code/conventions-general) |
| Naming Conventions | [docs.aegro.io/patterns/code/conventions-naming-complete](https://docs.aegro.io/patterns/code/conventions-naming-complete) |
| Dev Environment Setup | [docs.aegro.io/onboarding/git-setup](https://docs.aegro.io/onboarding/git-setup) |
