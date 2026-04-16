# 🛸 Nerd Mission Control

Shopee Afiliados — Curadoria Manual | PWA + Android APK

---

## Usar como PWA (celular e computador — recomendado)

### Opção A: Hospedar no GitHub Pages (grátis, 5 minutos)
1. Crie um repositório no GitHub (pode ser privado)
2. Suba os arquivos: `index.html`, `manifest.json`, `sw.js`, `icon-192.png`, `icon-512.png`
3. Vá em Settings → Pages → Branch: main → Save
4. Acesse `https://seuusuario.github.io/nerd-mc`
5. No celular: abra no Chrome → menu (⋮) → "Adicionar à tela inicial"
6. No computador: abra no Chrome → barra de endereço → ícone de instalar (⊕)

### Opção B: Hospedar localmente (só na sua rede)
```bash
npx serve . -p 8080
```
Acesse pelo IP local: `http://192.168.x.x:8080`

---

## Gerar APK Android

### Pré-requisitos
- Node.js 18+
- Java 17+ (JDK)
- Android Studio com SDK instalado
- Android SDK path configurado (ANDROID_HOME)

### Passos
```bash
# 1. Entre na pasta do projeto
cd nerd-mc/

# 2. Rode o script de build
chmod +x build-android.sh
./build-android.sh
```

O APK ficará em: `android/app/build/outputs/apk/debug/app-debug.apk`

### Instalar no celular
1. Copie o `app-debug.apk` para o celular via USB, Google Drive ou WhatsApp
2. Abra o arquivo no celular
3. Se pedir, habilite "Instalar de fontes desconhecidas" nas configurações
4. Instale e pronto!

---

## Configuração inicial do app

1. Abra o app → aba ⚙️ Config
2. Cole a URL do webhook do n8n
3. Selecione o destino padrão ou deixe para escolher ao enviar
4. Salve

---

## Fluxo de uso

1. Na Shopee Afiliados → selecione produtos → baixe o CSV
2. No app → aba Produtos → toque em "Importar CSV"
3. Marque os produtos que quer enviar agora
4. Toque em 🚀 Enviar
5. Produtos enviados ficam marcados — não aparecem mais para seleção

---

## Adicionar novos canais/grupos

1. Aba ⚙️ Config → Canais & Grupos → "+ Adicionar"
2. Nome, ID do WhatsApp, Tipo (canal ou grupo)
3. IDs pré-configurados:
   - Canal oficial: `120363425991429905@newsletter`
   - Grupo de teste: `120363407963539220@g.us`

---

## Arquivos

| Arquivo | Descrição |
|---------|-----------|
| `index.html` | App completo (PWA) |
| `manifest.json` | Configuração do PWA |
| `sw.js` | Service Worker (offline) |
| `icon-192.png` | Ícone 192x192 |
| `icon-512.png` | Ícone 512x512 |
| `capacitor.config.json` | Config do APK Android |
| `build-android.sh` | Script de build APK |
| `shopee_manual_v3.json` | Workflow n8n |
