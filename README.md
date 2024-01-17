# Flutter BLoC Project Starter

<a href="mailto:andriy.gulak@extrawest.com" alt="Contributors">
  <img src="https://img.shields.io/static/v1?label=Andriy Gulak&message=Maintainer&color=red" />
</a>
<a href="mailto:maksym.ostrovyj@extrawest.com" alt="Contributors">
  <img src="https://img.shields.io/static/v1?label=Maksym%20Ostrovyi&message=Contributor&color=red" />
</a>

A new Flutter application starter bundled with BLoC library for state management.

## Instructions on how to build, run and config
## Localization

### 1. Update en.json and other json dictionaries under the assets/i18n folder

### 2. Load assets and generate static keys for translations

```shell
sh ./scripts/generate_l10n.sh
```

## Models and other assets

### 1. Generate boilerplate (Freezed, Mockito, images etc.)

```shell
sh ./scripts/generate_runner.sh
```

### Generate all 

```shell
sh ./scripts/generate.sh
```

## CREATE CREDENTIALS FILES FOR DEVELOPMENT AND PRODUCTION MODE

Create `credentials_production.json` and `credentials_development.json` inside the `assets` folder.
Do not add these files to GIT!
Files should have the following structure:

```json
{
  "appName": "",
  "apiBaseUrl": ""
}
```
Where:
- Value for `appName` should be according to your project
- Value for `apiBaseUrl`, can be obtained on the backend

## BUILD SCRIPTS SETUP

For Visual Studio Code: 

1. Create a tasks.json file (next to vscode's launch.json, usually in the workspace's .vscode directory).
2. Put this task definition into it: 
```json
{
    "version": "2.0.0",
    "tasks": [
        {
            "label": "setupDevFlavor",
            "command": "scripts/setup_env.sh", 
            "args": [
                "dev",
            ]
        },
        {
            "label": "setupProdFlavor",
            "command": "scripts/setup_env.sh", 
            "args": [
                "prod",
            ]
        }
    ],
    
}
```
 
 3. Add `"preLaunchTask": "XXXXXXX"` to launch.json configuration(s) to reference the task.

 For Android Studio / Jetbrains IDEs:

 1. Go to `Run > Edit Configurations`
 2. Add a new shell script / external tool configuration to invoke this script.
 3. Configure our normal configuration(s) with a `Before Launch` to invoke the new shell script config.

## FIREBASE CONFIGURATION

```shell
sh ./scripts/confugure_firebase.sh {your_flavor_here}
```

## RUN THE APP IN DEVELOPMENT OR PRODUCTION MODE

App supports 2 flavors: `dev` and `prod`.

To use flavor value in app, use next function

```dart
Future<String?> getFalvor()
```

In order to run in production mode provide an additional flavor argument to the run
command:

- For Android/IOS:  `--flavor=prod`

```shell
flutter run --falvor=prod
```

- For Web: `--dart-define FLAVOR=prod`

```shell
flutter run --dart-define FLAVOR=prod
```


Important! To create the production build of the app you should also provider an
additional flavor argument:

- For Android/IOS:  `--flavor=prod`

```shell
flutter build ipa --flavor=prod
```

- For Web: `--dart-define FLAVOR=prod`

```shell
flutter build web --dart-define FLAVOR=prod
```

## Implemented Features

- MVVM (BLoC Feature Based) state sharing and state managing solution
- Fully featured localization / internationalization (i18n):
    - Pluralization support
    - Supports both languageCode (en) and languageCode_countryCode (en_US) locale formats
    - Automatically save & restore the selected locale
    - Full support for right-to-left locales
    - Fallback locale support in case the system locale is unsupported
    - Supports both inline or nested JSON
- NOSQL database integration (HIVE)
- Light/Dark theme configuration
- Dynamic Themes changing
- API client configuration
- DEV/PROD flavors configuration (native flavors included)
- Multilevel configurable logger
- Static analysis tool integration (flutter_lints package + custom rules config)
- Common widgets sharing and reusing example
- Resolution-aware images (1x,2x,3x sizes)

### Contributing

1. Fork it!
1. Create your feature branch: `git checkout -b new-cool-tip`
1. Commit your changes: `git commit -am 'Added new tip'`
1. Push to the branch: `git push origin new-cool-tip`
1. Submit a pull request.

---
Created by Extrawest Mobile Team
[Extrawest.com](https://www.extrawest.com), 2022
---
