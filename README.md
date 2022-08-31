# clean_architechture_getx

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:


## Work Flow
![alt text](/assets/Clean-Architecture-Flutter-Diagram.png?raw=true)
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
        |-- repositories
        |-- providers
            |-- database
            |-- network
                |-- apis
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
