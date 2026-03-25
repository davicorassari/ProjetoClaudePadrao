---
task: monetize-report
agent: monica-monetiza
order: 1
input: Relatório de publicação (squads/youtube-viral-machine/output/publication-report.md) + nicho do vídeo (video-input.md)
output: Relatório de monetização (squads/youtube-viral-machine/output/monetization-report.md)
---

## Process

1. Ler `publication-report.md` — quais clips foram publicados, em quais plataformas, URLs
2. Ler `video-input.md` — confirmar nicho/tema do conteúdo
3. Identificar fase atual de monetização (baseado em seguidores conhecidos ou estimados)
4. Mapear afiliados de alta conversão para o nicho identificado
5. Verificar status de progresso em direção aos programas nativos (YPP, TikTok Creator Rewards)
6. Gerar estratégia de link na bio para maximizar conversão dos clips publicados
7. Produzir 3 ações concretas para a próxima semana
8. Salvar relatório em `output/monetization-report.md`
9. Atualizar `_memory/memories.md` com nicho processado e afiliado testado

## Output Format

Ver seção "Output Format" em monica-monetiza.agent.md

## Output Example

```markdown
# Relatório de Monetização — 25/03/2026

## Status Atual
**Fase:** 1 (0–10k seguidores)
**Nicho:** Finanças Pessoais

---

## Oportunidades Imediatas (Hoje)

### 🔗 Afiliado Prioritário
**Produto:** Conta C6 Bank (abertura de conta digital)
**Plataforma:** C6 Bank Afiliados
**Comissão estimada:** R$60–R$80 por conta aberta
**CTA para os clips publicados hoje:** "Abre sua conta gratuita pelo link na bio e já começa com rendimento melhor que a poupança 💰"
**Link:** [inserir link de afiliado C6/Nubank]

**Alternativa:** Hotmart — curso de investimentos para iniciantes
**Comissão estimada:** R$40–R$120 por venda (30–50% de comissão)

### 💡 Ação de Link na Bio
Atualizar bio link para priorizar o link de afiliado da fintech na posição #1.
Use Stan.store ou Linktree com:
1. [Afiliado fintech] — "Abra sua conta grátis"
2. [Playlist YouTube] — "Mais vídeos sobre investimentos"
3. [Curso afiliado] — "Curso completo para iniciantes"

---

## Programas Nativos — Progresso

| Plataforma | Programa | Requisito | Falta |
|-----------|---------|----------|-------|
| YouTube | YPP | 1.000 sub | Atualizar após primeiro mês |
| TikTok | Creator Rewards | 10.000 seg | Atualizar após primeiro mês |

---

## Próximos Passos (Semana)

1. Criar conta em plataforma de afiliados (Hotmart + C6/Nubank Afiliados) e gerar links
2. Configurar link na bio com Stan.store ou Linktree (gratuito)
3. Publicar mais 3 clips no mesmo nicho (finanças) esta semana para consistência algorítmica

---

## Projeção de Receita

| Fonte | Fase Atual (0–10k) | Fase 2 (10k–100k) | Fase 3 (100k+) |
|------|-------------------|-------------------|----------------|
| Afiliados (fintech) | R$100–R$500/mês | R$500–R$3k/mês | R$3k–R$15k/mês |
| Programas nativos | R$0 | R$200–R$2k/mês | R$2k–R$20k/mês |
| Patrocínios | R$0 | R$500–R$5k/mês | R$5k–R$50k/mês |
| Produto próprio | R$0 | R$0 | R$2k–R$20k/mês |

*Projeções baseadas em benchmarks do mercado BR para nicho financeiro.*
```

## Quality Criteria

- [ ] Fase de monetização identificada
- [ ] Mínimo 1 afiliado concreto com CTA textualizado
- [ ] Status de progresso para YPP e TikTok Creator Rewards
- [ ] Estratégia de link na bio atualizada
- [ ] Mínimo 3 ações concretas para a próxima semana
- [ ] Projeção de receita por fase incluída
- [ ] `monetization-report.md` salvo
- [ ] `_memory/memories.md` atualizado

## Veto Conditions

- Nenhum afiliado identificado para o nicho → buscar com WebSearch antes de finalizar relatório
