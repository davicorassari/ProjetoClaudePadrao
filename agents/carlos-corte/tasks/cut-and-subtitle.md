---
task: cut-and-subtitle
agent: carlos-corte
order: 1
input: Clipes selecionados com timestamps (squads/youtube-viral-machine/output/selected-clips.md)
output: Clips editados, legendados e formatados 9:16 (squads/youtube-viral-machine/output/clips-ready.md + arquivos mp4)
---

## Process

1. Ler `selected-clips.md` — extrair timestamps, textos de hook overlay e path do vídeo original
2. Para cada clipe: extrair com buffer de 1 segundo com FFmpeg
3. Remover silêncios >0.5s com silencedetect
4. Formatar em 9:16 (blur background para vídeos horizontais)
5. Adicionar hook overlay de texto nos primeiros 2.5 segundos
6. Gerar e adicionar legendas burned-in com Whisper PT
7. Normalizar áudio a -14 LUFS
8. Verificar loop design — ajustar se possível
9. Salvar arquivos finais em `output/clip_[N]_final.mp4`
10. Gerar relatório `clips-ready.md` com paths e status de cada clip

## Output Format

Ver seção "Output Format" em carlos-corte.agent.md

## Output Example

```markdown
# Clips Prontos — YouTube Viral Machine
**Data:** 2026-03-25
**Vídeo original:** squads/youtube-viral-machine/output/Como_Investir_100.mp4

---

## Clip #1 — 04:12 → 04:44
**Arquivo:** squads/youtube-viral-machine/output/clip_1_final.mp4
**Duração:** 32 segundos
**Resolução:** 1080×1920
**Hook overlay:** "R$100/mês viram isso em 10 anos" (0–2.5s)
**Legendas:** ✅ Burned-in (Whisper PT)
**Loop design:** ✅ Implementado — final retoma tema de transformação financeira
**Áudio:** -14 LUFS normalizado
**Status:** ✅ Pronto para publicação

---

## Clip #2 — 11:33 → 12:05
**Arquivo:** squads/youtube-viral-machine/output/clip_2_final.mp4
**Duração:** 32 segundos
**Resolução:** 1080×1920
**Hook overlay:** "O erro que 90% comete no primeiro investimento" (0–2.5s)
**Legendas:** ✅ Burned-in (Whisper PT)
**Loop design:** ❌ Final não retorna ao início — ajuste não aplicável
**Áudio:** -14 LUFS normalizado
**Status:** ✅ Pronto para publicação
```

## Quality Criteria

- [ ] Todos os clips em 1080×1920, 9:16
- [ ] Duração 15–45 segundos cada
- [ ] Legenda burned-in em 100% dos frames com fala
- [ ] Hook overlay presente (0–2.5s)
- [ ] Áudio normalizado (-14 LUFS ±2)
- [ ] Sem marcas d'água
- [ ] Relatório `clips-ready.md` completo com paths

## Veto Conditions

- FFmpeg não disponível → reportar com comando de instalação
- Whisper não disponível → reportar com comando de instalação
- Resolução do vídeo original < 480p → alertar Davi sobre qualidade baixa antes de continuar
