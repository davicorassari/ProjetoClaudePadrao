# ProjetoClaudePadrao

Repositório de squads de IA usando o framework [OpenSquad](https://github.com/renatoasse/opensquad).

## Squads disponíveis

| Squad | Descrição |
|-------|-----------|
| [youtube-viral-machine](opensquad/squads/youtube-viral-machine/) | Transforma vídeos do YouTube em cortes virais e publica no Reels, TikTok, YouTube Shorts, Kwai, Threads e X |

## Como usar

### Opção 1 — GitHub Codespaces (online, gratuito)

1. Clique em **Code → Codespaces → Create codespace on main**
2. Aguarde a instalação automática (FFmpeg, yt-dlp, Whisper, Claude Code)
3. No terminal:
```bash
cd opensquad
claude
```
4. Digite `/opensquad run youtube-viral-machine`

### Opção 2 — Local

```bash
git clone https://github.com/davicorassari/ProjetoClaudePadrao
cd ProjetoClaudePadrao/opensquad

# Instalar dependências
pip install yt-dlp openai-whisper
# brew install ffmpeg  (Mac)
# sudo apt install ffmpeg  (Linux)

claude
```

## Estrutura

```
opensquad/
├── squads/
│   └── youtube-viral-machine/    ← squad principal
│       ├── squad.yaml
│       └── pipeline/
├── agents/
│   ├── vitor-viral/              ← caça momentos virais
│   ├── carlos-corte/             ← edita e legenda os clips
│   ├── paula-post/               ← escreve captions por plataforma
│   ├── roberto-reach/            ← publica em todas as plataformas
│   └── monica-monetiza/          ← relatório de monetização
└── _opensquad/                   ← core do framework
```
