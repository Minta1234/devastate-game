@echo off
echo [1/2] Building the APK using apktool...
apktool b . --use-aapt2 -o my_new_app.apk
if %errorlevel% neq 0 (
    echo Error: apktool build failed!
    pause
    exit /b %errorlevel%
)

if not exist uber-apk-signer.jar (
    echo Downloading uber-apk-signer.jar...
    powershell -Command "Invoke-WebRequest -Uri 'https://github.com/patrickfav/uber-apk-signer/releases/download/v1.3.0/uber-apk-signer-1.3.0.jar' -OutFile 'uber-apk-signer.jar'"
)

echo [2/2] Zip-aligning and signing the APK with V2 signature...
java -jar uber-apk-signer.jar -a my_new_app.apk --ks my-release-key.keystore --ksAlias my_alias --ksPass android --ksKeyPass android
if %errorlevel% neq 0 (
    echo Error: Signing failed!
    pause
    exit /b %errorlevel%
)

echo =========================================
echo SUCCESS! Your finalized app is ready:
echo my_new_app-aligned-signed.apk
echo =========================================
pause
