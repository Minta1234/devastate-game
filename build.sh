#!/bin/bash

# Build the APK using Apktool with AAPT2 to avoid resource errors
echo "[1/2] Building the APK using apktool..."
apktool b . --use-aapt2 -o my_new_app.apk

if [ $? -ne 0 ]; then
    echo "Error: apktool build failed!"
    exit 1
fi

# Check if uber-apk-signer exists, if not, download it
if [ ! -f "uber-apk-signer.jar" ]; then
    echo "Downloading uber-apk-signer.jar..."
    wget -q https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar -O uber-apk-signer.jar
fi

# Sign and Zipalign the APK
echo "[2/2] Zip-aligning and signing the APK with V2 signature..."
java -jar uber-apk-signer.jar -a my_new_app.apk --ks my-release-key.keystore --ksAlias my_alias --ksPass android --ksKeyPass android

if [ $? -ne 0 ]; then
    echo "Error: Signing failed!"
    exit 1
fi

echo "========================================="
echo "SUCCESS! Your finalized app is ready:"
echo "my_new_app-aligned-signed.apk"
echo "========================================="
