# Davastate (Android Port)

This repository contains the Android source code for **Davastate**, a Wolf RPG Editor game ported to Android using the BrowserWoditor web engine wrapper.

## Features
- **Android Compatibility:** Fully playable on modern Android devices.
- **Fixed Touch Controls:** The JavaScript touch handlers have been modified to allow seamless screen tapping to interact with the game.
- **Custom Icons:** Upgraded adaptive icon sets with proper mipmap scaling for all screen densities.
- **Modern Build Support:** Ready to be compiled for Android API 35 with V2 signatures.

## How to Build the APK

If you want to compile this source code into an installable `.apk` file yourself, you will need to use [Apktool](https://apktool.org/).

### 1. Rebuild the App
Run the following command in the root directory to package the source code into an APK:
```bash
apktool b . --use-aapt2 -o my_new_app.apk
```

### 2. Sign and Align
Modern Android devices require apps to be zip-aligned and signed with a V2 signature. You can easily do this using [uber-apk-signer](https://github.com/patrickfav/uber-apk-signer):
```bash
java -jar uber-apk-signer.jar -a my_new_app.apk
```

### 3. Install
Transfer the resulting `-aligned-signed.apk` file to your Android device and install it!

---
*Note: Make sure to check the `assets/public/` folder for the core game engine scripts and the `Data.wolf` game archive.*
