#!/bin/bash
# ════════════════════════════════════════════════════════════════
# 🛸 NERD MISSION CONTROL — Build APK Android
# Rode este script no seu PC (Mac/Windows/Linux) para gerar o APK
# Pré-requisitos: Node.js 18+, Java 17+, Android Studio
# ════════════════════════════════════════════════════════════════

set -e
echo ""
echo "🛸 Nerd Mission Control — Build APK"
echo "═══════════════════════════════════"

# 1. Instala dependências
echo ""
echo "📦 Instalando dependências..."
npm install

# 2. Adiciona plataforma Android (só na primeira vez)
if [ ! -d "android" ]; then
  echo ""
  echo "📱 Adicionando plataforma Android..."
  npx cap add android
fi

# 3. Sincroniza web com Android
echo ""
echo "🔄 Sincronizando..."
npx cap sync android

# 4. Build do APK debug (não precisa de keystore)
echo ""
echo "🔨 Compilando APK..."
cd android
./gradlew assembleDebug

echo ""
echo "✅ APK gerado com sucesso!"
echo "📍 Localização: android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "Para instalar no celular:"
echo "  adb install android/app/build/outputs/apk/debug/app-debug.apk"
echo ""
echo "Ou copie o app-debug.apk para o celular e instale manualmente."
