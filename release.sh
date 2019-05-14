mkdir -p output
cordova build android --release
jarsigner -verbose -digestalg SHA1 -sigalg MD5withRSA -keypass urun123 -keystore release.keystore -storepass urun123 -signedjar output/release.apk ./platforms/android/app/build/outputs/apk/armv7/release/app-armv7-release-unsigned.apk urunreleasekey
