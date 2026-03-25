#!/bin/bash
set -e

echo "🚀 Configurando ambiente OpenSquad..."

# FFmpeg
echo "📦 Instalando FFmpeg..."
apt-get update -qq && apt-get install -y -qq ffmpeg

# yt-dlp
echo "📦 Instalando yt-dlp..."
pip install -q yt-dlp

# Whisper (OpenAI)
echo "📦 Instalando Whisper..."
pip install -q openai-whisper

# Claude Code CLI
echo "📦 Instalando Claude Code..."
npm install -g @anthropic-ai/claude-code

echo ""
echo "✅ Tudo instalado!"
echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  Como usar:"
echo ""
echo "  1. cd opensquad"
echo "  2. claude"
echo "  3. /opensquad run youtube-viral-machine"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
