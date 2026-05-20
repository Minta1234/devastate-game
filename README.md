# Davastate (Android Port)

![Davastate](https://img.shields.io/badge/Platform-Android-green.svg)
![Build](https://img.shields.io/badge/Build-Apktool-blue.svg)

## Web
- Web Version: https://minta1234.github.io/devastate-game/assets/public/

This repository contains the Android source code for **Davastate**, a Wolf RPG Editor game seamlessly ported to Android using the BrowserWoditor web engine wrapper.

## ✨ Features
- **Android Compatibility:** Fully playable on modern Android devices (up to Android 14 / API 35).
- **Fixed Touch Controls:** The JavaScript touch handlers (`system.js`) have been modified to prevent touch swallowing, allowing seamless screen tapping to interact with the game.
- **Custom Adaptive Icons:** Upgraded adaptive icon sets with proper mipmap scaling for all screen densities (`mdpi`, `hdpi`, `xhdpi`, `xxhdpi`, `xxxhdpi`).
- **Modern Build Support:** Ready to be compiled and signed with modern V2 cryptographic signatures.

---

## 🛠️ How to Build the APK

If you want to compile this source code into an installable `.apk` file yourself, you will need to use [Apktool](https://apktool.org/). 

For your convenience, an automated build script is included!

### 1. Automated Build & Sign
Open your terminal (or Command Prompt) in the root directory and run the automated build script for your operating system:

**For Windows:**
Double-click `build.bat` or run:
```cmd
build.bat
```

**For Linux / Mac:**
```bash
chmod +x build.sh
./build.sh
```

These scripts will automatically:
1. Rebuild the app using `apktool`.
2. Download `uber-apk-signer` (if not found).
3. Zip-align and sign the APK with a modern V2 signature.

### 2. Install
Transfer the resulting `my_new_app-aligned-signed.apk` file to your Android device. **Note:** If you are updating from a previous version, you may need to uninstall the old app first due to signature mismatches.

---

## 🧩 Project Structure

- `assets/public/` - The core HTML5/WASM engine wrapper.
- `assets/public/Data.wolf` - The encrypted game archive containing all assets.
- `res/` - Android resources, including our custom app icons and layout overrides.
- `smali/` - The decompiled Java code that handles the Android WebView bridging.
- `find_key.py` - A diagnostic Python script used to reverse-engineer and verify the `Data.wolf` decryption keys for modding.

---

## ⚠️ Known Issues & Troubleshooting

### False Positive Virus Warnings
If you upload the compiled APK to scanners like VirusTotal, some heuristic scanners (like Fortinet) may falsely flag the app as `Android/Locker` or similar. 

**This is a known false positive.** It happens because:
1. The app uses a fullscreen WebView that hides standard navigation.
2. The HTML/JS wrapper blocks default touch behaviors to allow the game engine to capture inputs.
3. The app contains a giant encrypted blob (`Data.wolf`).
Heuristic scanners mistake this behavior for screen-locking ransomware, but the application is completely safe.

### "App Not Installed" Error
If Android refuses to install your compiled APK:
- Ensure you ran the `zipalign` and `apksigner` (or `uber-apk-signer`) steps to generate a V2 signature.
- Uninstall any existing versions of the app on your phone, as the newly generated `.keystore` signatures will not match the old ones.

## Original Game
