---
task: write-captions
agent: paula-post
order: 1
input: Clips prontos com transcrições e hooks (squads/youtube-viral-machine/output/clips-ready.md)
output: Captions por plataforma para cada clip (squads/youtube-viral-machine/output/captions-[N].md)
---

## Process

1. Ler `clips-ready.md` — extrair lista de clips, transcrições e textos de hook
2. Ler nicho/tema do vídeo em `video-input.md`
3. Para cada clip:
   a. Fazer diagnóstico de copy (tom, emoção, awareness, afiliado)
   b. Criar 2 opções de hook universal (curiosity gap + dado chocante)
   c. Escrever captions adaptados para: TikTok, Instagram Reels, YouTube Shorts, Kwai, X, Threads
   d. Identificar CTA de afiliado específico para o nicho
   e. Salvar em `output/captions-[N].md`
4. Criar `output/captions-summary.md` listando todos os arquivos gerados

## Output Format

Ver seção "Output Format" em paula-post.agent.md

## Output Example

```markdown
# Captions — Clip #1
**Nicho:** Finanças Pessoais / Investimentos
**Tom selecionado:** 🧠 Educacional / Revelador
**Emoção dominante:** Surpresa + FOMO

---

### TikTok
**Caption:**
R$100 por mês podem virar R$352 mil em 30 anos. Sim, R$100. Isso é o que os juros compostos fazem que não te ensinaram na escola. Salva esse vídeo.

**Hashtags:** #investimentos #financaspessoais #juroscompostos #independenciafinanceira

---

### Instagram Reels
**Caption:**
R$100/mês podem virar R$352.000 em 30 anos 🤯
.
.
Sim. Com investimento acessível hoje (renda fixa a 12%/ano), isso é completamente real.
.
O problema? Ninguém ensina isso nas escolas.
.
💾 Salva pra lembrar quando quiser começar.

**Hashtags:** #investimentos #financaspessoais #juroscompostos #independenciafinanceira #rendafixa #educacaofinanceira #dinheironobolso #vidarica #liberdadefinanceira #investidor #dicasdeinvestimento #tesouredireto #nubank #mercadopago #fintech

**Áudio trending sugerido:** verificar trending na semana (buscar sons populares em #financastok)

---

### YouTube Shorts
**Título:** R$100/mês → R$352.000? Veja os números reais
**Descrição:**
O que os juros compostos fazem com R$100 por mês em 30 anos vai te surpreender.
#Shorts #investimentos #financaspessoais

---

### Kwai
**Caption:**
Você sabia que R$100/mês podem virar R$352.000? 💰🤯
É isso que os juros compostos fazem!
#investimentos #financaspessoais #dinheiro

---

### X (Twitter)
R$100/mês investidos por 30 anos = R$352.000.
Não é mágica. É matemática que não ensinaram na escola.
#investimentos

---

### Threads
Assisti esse trecho de um vídeo sobre investimentos e precisei pausar.

R$100 por mês em 30 anos, com 12% ao ano (que é o que dá pra fazer hoje em dia em renda fixa), vira R$352.000.

Não precisa ser rico pra começar. Precisa começar cedo.

---

### CTA de Monetização
**Afiliado sugerido:** Conta digital com cashback / CDB de alta liquidez
**CTA:** "Abre sua conta gratuita pelo link na bio e já começa com um rendimento melhor que a poupança 💰"
**Link:** [inserir link de afiliado da corretora/fintech]
```

## Quality Criteria

- [ ] Captions únicos para cada plataforma (não cópia)
- [ ] Hook Instagram ≤ 125 chars antes da primeira quebra de linha
- [ ] Keywords de nicho no TikTok (mínimo 2)
- [ ] #Shorts no YouTube Shorts
- [ ] CTA específico em todas as plataformas
- [ ] CTA de afiliado identificado e textualizado
- [ ] Arquivos `captions-[N].md` criados para cada clip

## Veto Conditions

- Caption idêntico em duas ou mais plataformas → reescrever
- Sem CTA em alguma plataforma → adicionar antes de entregar
