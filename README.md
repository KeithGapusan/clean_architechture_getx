# clean_architechture_getx
This is the initial template of clean architecture with getX state management

## Getting Started

flutter clean
flutter pub get
add the .env file
flutter pub run build_runner clean
flutter pub run build_runner build --delete-conflicting-outputs  
flutter run 


## Work Flow
![alt text](/assets/images/Clean-Architecture-Flutter-Diagram.png)
## Project Structure
```
|-- lib
    |-- main.dart
    |-- app
        |-- core
            |-- usecases
        |-- config
            |-- app_constants.dart
            |-- app_colors.dart
        |   -- app_text_styles.dart
        |-- services
        |-- util
        |-- types
        |-- extenstions
    |-- data
        |-- models
            |--parameters
            |--response 
        |-- repositories
        |-- providers
            |-- database
            |-- environments
            |-- network
                |-- gateway
                |-- api_endpoints.dart
                |-- api_provider.dart
                |-- api_representable.dart
    |-- domain
        |-- entities
        |-- repositories
        |-- usecases
    |-- presentation
        |-- controllers
        |-- pages
        |-- views
        |-- app.dart
```

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
