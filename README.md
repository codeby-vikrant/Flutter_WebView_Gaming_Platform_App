# Platform_Web_View

This is a basic Flutter mobile application that integrates a WebView to load gaming platform URLs and follows a clean architecture pattern for scalable and maintainable development.

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
 
