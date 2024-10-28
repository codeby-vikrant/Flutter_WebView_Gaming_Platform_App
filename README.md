# Platform_Web_View

This is a basic Flutter mobile application that integrates a WebView to load gaming platform URLs and follows a clean architecture pattern for scalable and maintainable development.

---

# Features

WebView Integration: Load gaming platform websites within the app using WebView.

Navigation: Basic bottom navigation with two screens—one for a dummy list of games and the other for the WebView.

State Management: Uses Provider for scalable state management.

Error Handling: Displays error messages when there's no internet connection or failed page loading.

Performance Optimizations: Smooth WebView experience with caching and efficient resource loading.

Pull-to-Refresh: Ability to refresh the WebView content by pulling down.

---

# Dependencies

Make sure you have the following versions in your pubspec.yaml:

dependencies:
  flutter:
    sdk: flutter
  webview_flutter: ^4.0.0
  provider: ^6.0.5
  cached_network_image: ^3.2.1

---

# How to Run the App

1. Prerequisites

Ensure you have the following installed on your machine:

Flutter SDK: Install Flutter

Android Studio or Xcode for iOS builds

Java 17: Install OpenJDK 17


2. Cloning the Repository

To clone the repository:
git clone https://www.github.com/codeby-vikrant/Flutter_WebView_Gaming_Platform_App

3. Install Dependencies

Run the following command to get all necessary dependencies:

flutter pub get

4. Running on Android/iOS

To run the app on Android/iOS, connect a device or start an emulator and run:

flutter run

You can also specify the platform:

flutter run -d android
flutter run -d ios

Ensure that your device is connected and detected by running:

flutter devices

---

# Contributions

Feel free to fork this repository and contribute to it by opening a pull request.

---

# Contact

If you have any questions or issues, please contact:

workwithvikrant0111@gmail.com
