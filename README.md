# .github

Default [community health files](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file) for the **Aegro** organization.

Templates defined here are herdados por todos os repos da org que não possuem seus próprios.

## O que está aqui

| Arquivo | Tipo | Descrição |
|---------|------|-----------|
| `.github/ISSUE_TEMPLATE/bug.yml` | Issue template | Bug — tipo `Bug` |
| `.github/ISSUE_TEMPLATE/feature.yml` | Issue template | Feature — tipo `Feature` |
| `.github/ISSUE_TEMPLATE/config.yml` | Issue config | Links para RFC e Tech Debt via Discussions |
| `.github/DISCUSSION_TEMPLATE/rfc.yml` | Discussion template | RFC — proposta técnica |
| `.github/DISCUSSION_TEMPLATE/tech-debt.yml` | Discussion template | TD — dívida técnica |

## Como funciona

- Repos **sem** templates locais herdam os daqui automaticamente
- Repos **com** templates locais usam os seus (não herdam)
- Para adicionar templates específicos de um repo, crie os arquivos no próprio repo

## Referência

- [Processo de Decisões Técnicas](https://docs.aegro.io/meta/decisions-process)
