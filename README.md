# wns_builder

## pre-requires

- nodejs
- [cordova][https://cordova.apache.org/]

## Android

- android studio

https://cordova.apache.org/docs/en/latest/guide/platforms/android/

build:
```
  $ git checkout dev
  $ cordova build android
```

build: ``

## iOS

- xcode-select --install

https://cordova.apache.org/docs/en/latest/guide/platforms/ios/
build: 
```
  $ git checkout ios
  $ cordova build ios
```

- 初始化项目

```
cordova platform add ios
```


- 构建xcode工程

```
cordova build ios
```

- 打开xcode工程：`open platforms/ios/威尼斯人.xcodeproj`
- 添加开发者账号信息 `Accounts -> add new developer`
- 执行 `sh build_ios.sh`
- ipa 可在 `platforms/ios/output` 找到

