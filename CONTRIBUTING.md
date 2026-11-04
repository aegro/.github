# Contributing to Aegro

Guidelines for contributing to Aegro repositories. For detailed documentation on each topic, see the links in [Useful links](#useful-links).

## Initial setup

Run the bootstrap script to apply the standard Git configuration:

```bash
bash <(curl -s https://raw.githubusercontent.com/aegro/.github/dev/scripts/setup-dev.sh)
```

This sets `dev` as the default branch and configures line ending normalization. For the full onboarding guide, see [Git Setup](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/onboarding/configurar-o-git.md).

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
| Issue work | `<type>/<n>-<description>` | `feat/1234-crop-rotation` |
| Work without an issue | `<type>/<description>` | `docs/fix-setup-link` |
| Hotfix | `hotfix/<n>-<description>` | `hotfix/5678-fix-cost-calc` |
| Experimental | `experimental/<description>` | `experimental/graphql-gateway` |

`<type>` is one of the [commit prefixes](#commits) below, without the colon; `<n>` is the number of the GitHub issue that tracks the work (it may live in another repo, such as `aegro/workspace`); and `<description>` is short, in English kebab-case.

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

For the full review process, see [Code Review Guide](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/guias/desenvolvimento/revisao-de-codigo.md).

## Technical decisions

There is no separate decision document. A decision that becomes a rule is a PR that changes the page where the rule lives (the PR description keeps the why, as **Antes:**/**Depois:**). A decision that only applies to one system goes to that repository's `docs/`. A big proposal that needs discussion first is a draft PR with the change, discussed in the team's channel. Recognized technical debt is a `Historia tecnica` issue in the system's repository.

The ADR + RFC process (GitHub Discussions in `aegro/docs`) ended on 2026-11-04. See [decisions](https://github.com/aegro/handbook/blob/dev/docs/contributing.md#decisões) in the handbook.

## Conventions

- **Language**: code in English (names, comments, documentation)
- **Casing**: PascalCase for classes/interfaces/enums, camelCase for methods/variables, SCREAMING_SNAKE_CASE for constants
- **No abbreviations**: `transaction` not `tx`, `repository` not `repo`
- **No commented-out code**: use version control
- **Comments**: explain *why*, not *what*

For the complete coding conventions, see [General Conventions](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/padroes/codigo/convencoes-gerais.md) and [Naming Conventions](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/padroes/codigo/nomes-por-linguagem.md).

## Useful links

| Resource | Link |
|----------|------|
| Git & Repositories | [handbook](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/padroes/repositorios.md) |
| Branching & Merges | [handbook](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/padroes/fluxo-de-branches.md) |
| Code Review | [handbook](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/guias/desenvolvimento/revisao-de-codigo.md) |
| Technical Decisions | [handbook](https://github.com/aegro/handbook/blob/dev/docs/contributing.md#decisões) |
| General Conventions | [handbook](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/padroes/codigo/convencoes-gerais.md) |
| Naming Conventions | [handbook](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/padroes/codigo/nomes-por-linguagem.md) |
| Dev Environment Setup | [handbook](https://github.com/aegro/handbook/blob/dev/dept/produto/engenharia/onboarding/configurar-o-git.md) |
