---
task: hunt-viral-moments
agent: vitor-viral
order: 1
input: URL do vídeo YouTube + nicho/tema (de squads/youtube-viral-machine/output/video-input.md)
output: Relatório de momentos virais com timestamps, scores e textos de overlay (squads/youtube-viral-machine/output/viral-moments.md)
---

## Process

1. **Ler input** de `squads/youtube-viral-machine/output/video-input.md` — extrair URL e nicho
2. **Baixar o vídeo** com yt-dlp (melhor qualidade disponível, máx 1080p)
3. **Extrair áudio** em mp3 para transcrição
4. **Transcrever** com Whisper em português — salvar como JSON em `output/`
5. **Varrer a transcrição** segmento por segmento (janelas de 15–60s com overlap de 10s)
6. **Calcular score viral** para cada janela usando a fórmula do framework
7. **Selecionar top 3–5** janelas com score ≥ 0.65, ordenadas por score
8. **Para cada selecionado:** identificar hook frame, propor overlay, explicar mecanismo psicológico
9. **Salvar relatório** em `squads/youtube-viral-machine/output/viral-moments.md`

## Output Format

Ver seção "Output Format" em vitor-viral.agent.md

## Output Example

```markdown
# Momentos Virais — "Como Investir R$100 por Mês e Ficar Rico"
**URL:** https://www.youtube.com/watch?v=xxxxx
**Duração total:** 18:42
**Transcrição:** squads/youtube-viral-machine/output/audio.json

---

## Momento #1 ⭐ Score: 0.91

**Timestamps:** 04:12 → 04:44 (32 segundos)
**Hook frame:** 04:12
**Texto de overlay sugerido:** "R$100/mês viram isso em 10 anos"

**Score breakdown:**
- Surpresa: 0.95 — Revelação de número específico muito acima do esperado
- Curiosidade: 0.90 — "O que eu vou te mostrar agora vai mudar como você vê dinheiro"
- Energia: 0.85 — Tom de voz elevado, ritmo acelerado
- Entrada limpa: 1.00 — Começa com "Imagina que você investe apenas R$100 por mês..."
- Loop: 0.80 — Final retorna ao tema de transformação financeira

**Transcrição do momento:**
"Imagina que você investe apenas R$100 por mês. Parece pouco, né? Mas o que eu vou te mostrar agora vai mudar como você vê dinheiro. Em 10 anos, com juros compostos a 12% ao ano — que é completamente factível em renda fixa hoje — você teria R$23.000. Mas em 30 anos? R$352.000. De R$100 por mês. Isso é o poder dos juros compostos que não te ensinaram na escola."

**Por que vai viralizar:** Utiliza o gap de curiosidade clássico (promessa antes da revelação) + dado específico surpreendente (R$352k de R$100/mês). Ativa o arousal emocional via surpresa positiva combinada com FOMO implícito ("não te ensinaram na escola").

---

## Momento #2 ⭐ Score: 0.78

**Timestamps:** 11:33 → 12:05 (32 segundos)
**Hook frame:** 11:33
**Texto de overlay sugerido:** "O erro que 90% comete no primeiro investimento"

[...]
```

## Quality Criteria

- [ ] Transcrição completa disponível antes da análise
- [ ] Mínimo 3, máximo 5 momentos recomendados
- [ ] Todos os clipes com score ≥ 0.65
- [ ] Todos com timestamps precisos (±2 segundos)
- [ ] Todos com texto de overlay sugerido (máx 8 palavras)
- [ ] Todos com explicação do mecanismo psicológico
- [ ] Relatório salvo em `output/viral-moments.md`

## Veto Conditions

- Menos de 3 momentos encontrados com score ≥ 0.65 → expandir threshold para 0.55 e indicar no relatório
- Áudio inaudível ou sem transcrição → reportar erro e sugerir alternativa
