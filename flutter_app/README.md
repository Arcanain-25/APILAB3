# EduLearn Flutter

Flutter implementation of the EduLearn course catalog. The original Kotlin/Compose application remains in the parent folder.

## Run

Install Flutter 3.50.1 or newer and make sure `flutter/bin` is on `PATH`. The Android platform scaffold is included. From this folder, run:

```sh
flutter pub get
flutter test
flutter run
```

Alternatively, open this `flutter_app` folder in Android Studio, select an Android emulator or connected device, and run the `main.dart` configuration.

The home dashboard and course overview load the supplied `lab v4.json` asynchronously through `AssetLearningContentRepository`; all remote images and Iconify SVGs are rendered from its URLs. The catalog state is managed by `CourseCatalogCubit` from `flutter_bloc`. Internet access is required for remote media.