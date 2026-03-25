---
task: publish-all
agent: roberto-reach
order: 1
input: Conteúdo aprovado (squads/youtube-viral-machine/output/approved-content.md)
output: Relatório de publicação com URLs (squads/youtube-viral-machine/output/publication-report.md)
---

## Process

1. Ler `approved-content.md` — extrair clips aprovados e captions por plataforma
2. Para cada clip, verificar pré-publicação (resolução, sem watermark, caption disponível)
3. Publicar em cada plataforma na sequência: Instagram (Trial) → TikTok → YouTube → Kwai → X → Threads
4. Registrar URL de cada publicação
5. Salvar `publication-report.md` com status completo
6. Alertar sobre falhas imediatamente

## Output Format

Ver seção "Output Format" em roberto-reach.agent.md

## Output Example

```markdown
# Relatório de Publicação — 25/03/2026
**Clips publicados:** 2
**Plataformas:** Instagram, TikTok, YouTube Shorts, Kwai, X, Threads

---

## Clip #1 — "R$100/mês → R$352k"

| Plataforma | Status | URL | Observação |
|-----------|--------|-----|-----------|
| Instagram Reels | ✅ Publicado | https://instagram.com/reel/xxx | Trial Reel ativo — aguardar 24h para avaliar |
| TikTok | ✅ Publicado | https://tiktok.com/@davi/video/xxx | — |
| YouTube Shorts | ✅ Publicado | https://youtube.com/shorts/xxx | — |
| Kwai | ✅ Publicado | https://kwai.com/v/xxx | — |
| X | ✅ Publicado | https://x.com/davi/status/xxx | — |
| Threads | ✅ Publicado | https://threads.net/@davi/post/xxx | — |

**Horário:** 12:34
**Ação recomendada:** Responder comentários nas próximas 2h para amplificar distribuição algorítmica.
```

## Quality Criteria

- [ ] Todos os clips verificados pré-publicação
- [ ] Trial Reels ativado no Instagram
- [ ] Upload nativo (não link externo) em todas plataformas
- [ ] Captions corretos aplicados
- [ ] URLs registradas para todos os posts
- [ ] `publication-report.md` completo

## Veto Conditions

- Clip com marca d'água detectada → NÃO publicar, alertar Davi e retornar para Carlos Corte
- Caption não disponível para a plataforma → NÃO publicar nessa plataforma até ter o caption
