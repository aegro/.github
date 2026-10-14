# .github

Default [community health files](https://docs.github.com/en/communities/setting-up-your-project-for-healthy-contributions/creating-a-default-community-health-file) for the **Aegro** organization.

Arquivos definidos aqui são herdados por todos os repos da org que não possuem seus próprios.

## O que está aqui

| Arquivo | Tipo | Descrição |
|---------|------|-----------|
| `profile/README.md` | Org profile | Vitrine pública da org no GitHub |
| `CONTRIBUTING.md` | Contributing guide | Guia de contribuição herdado por todos os repos |
| `.github/PULL_REQUEST_TEMPLATE.md` | PR template | Template padrão para pull requests |
| `.github/ISSUE_TEMPLATE/defeito.yml` | Issue template | Defeito — tipo `Defeito` |
| `.github/ISSUE_TEMPLATE/historia-tecnica.yml` | Issue template | Historia tecnica — tipo `Historia tecnica` |
| `.github/ISSUE_TEMPLATE/tarefa.yml` | Issue template | Tarefa — tipo `Tarefa` |
| `.github/ISSUE_TEMPLATE/config.yml` | Issue config | Links para RFC e Tech Debt via Discussions |
| `.github/DISCUSSION_TEMPLATE/rfc.yml` | Discussion template | RFC — proposta técnica |
| `.github/DISCUSSION_TEMPLATE/tech-debt.yml` | Discussion template | TD — dívida técnica |

## Como funciona

- Repos **sem** o arquivo localmente herdam o daqui automaticamente
- Repos **com** o arquivo local usam o seu (o global não é aplicado)
- Para customizar num repo específico, crie o arquivo no próprio repo

### Issue Types vs Labels

Issues usam **Issue Types** nativos do GitHub (configurados no nível da organização) para definir o tipo. Os forms daqui cobrem os três que nascem no repo do código:

| Issue Type | Quando usar | Filha de |
|------------|-------------|----------|
| **Defeito** | Comportamento divergente do esperado, detectado internamente | — (raiz) |
| **Historia tecnica** | Mudança que o usuário não vê — refactor, infra, ferramental, dívida | — (raiz) |
| **Tarefa** | Trabalho executável numa squad | `Entrega` ou `Épico` (em `aegro/workspace`), `Defeito` ou `Historia tecnica` |

Os demais types (`Entrega`, `Épico`, `Lancamento`, `Tarefa de lancamento`, `Ticket de Suporte`, `IT Help de Suporte`) nascem em `aegro/workspace`, que tem forms próprios. A árvore completa, os campos obrigatórios e onde cada type nasce estão em [taxonomia-de-issues.md](https://github.com/aegro/workspace/blob/dev/governance/conventions/taxonomia-de-issues.md).

Os headings dos forms (label, `id`, ordem e obrigatoriedade) são cópia dos forms de `aegro/workspace` — ferramentas que escrevem o corpo da issue dependem deles. Mudou lá, mude aqui.

**Labels** são tags transversais que complementam o tipo (`epic`, `dx`, `ci-cd`, `security`, `good first issue`).

### Discussion templates

Os templates de Discussion dependem das **categorias** estarem configuradas no repo. Se o repo não tem a categoria "RFC" ou "Tech Debt" nas Discussions, o template correspondente não aparece.

Categorias são configuradas por repo (não há default global). Os 14 repos com Discussions habilitadas já possuem as categorias RFC e Tech Debt.

## Configuração de ambiente

### Setup rápido

Execute o script de bootstrap para aplicar as configurações Git padrão da Aegro:

```bash
bash <(curl -s https://raw.githubusercontent.com/aegro/.github/dev/scripts/setup-dev.sh)
```

Ou rode manualmente:

```bash
git config --global init.defaultBranch dev
git config --global core.autocrlf input
```

### Arquivos de referência

O diretório `recommended/` contém configs de referência para novos repos:

| Arquivo | Descrição |
|---------|-----------|
| `recommended/.editorconfig` | Indentação e encoding padrão por linguagem |
| `recommended/.gitattributes` | Normalização de line endings e classificação de binários |

Copie para a raiz do seu repo e ajuste conforme necessário.

Para o guia completo de onboarding, consulte a [documentação de configuração do Git](https://docs.aegro.io/onboarding/git-setup).

## Referência

- [Processo de Decisões Técnicas](https://docs.aegro.io/meta/decisions-process)
