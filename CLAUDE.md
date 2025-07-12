# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Flutter application project for a children's Scratch learning website. The project is built using Flutter SDK ^3.7.2 and supports web, Android, and iOS platforms. The goal is to convert this from a mobile app to a web service for teaching programming concepts to children through Scratch.

## Development Commands

### Dependencies and Setup
```bash
flutter pub get          # Install dependencies
flutter pub upgrade      # Update dependencies
flutter pub outdated     # Check for outdated dependencies
```

### Running the Application
```bash
flutter run              # Run on connected device/emulator
flutter run -d web-server # Run as web server for development
flutter run -d chrome    # Run in Chrome browser
flutter run -d ios       # Run specifically on iOS simulator
flutter run -d android   # Run specifically on Android emulator
flutter run --release    # Run optimized release build
```

### Code Quality and Analysis
```bash
flutter analyze          # Run static analysis (uses analysis_options.yaml)
flutter format .         # Format all Dart files
flutter format --dry-run # Check formatting without applying changes
```

### Testing
```bash
flutter test             # Run all tests
flutter test test/widget_test.dart  # Run specific test file
flutter test --coverage # Run tests with coverage report
```

### Building
```bash
flutter build apk        # Build Android APK
flutter build ios        # Build iOS app (requires Xcode)
flutter build web        # Build web version
flutter clean            # Clean build artifacts
```

## Project Structure

- `lib/main.dart` - Main application entry point with basic counter demo
- `test/widget_test.dart` - Widget tests for the main application
- `android/` - Android-specific configuration and build files
- `ios/` - iOS-specific configuration and build files
- `pubspec.yaml` - Flutter project configuration and dependencies
- `analysis_options.yaml` - Dart/Flutter linting configuration (uses flutter_lints)

## Key Configuration Details

### Android Configuration
- Package name: `jp.nyanitpass.temp_nyan_it_passport`
- Minimum SDK: 21 (Android 5.0)
- Custom launcher icon configured via `flutter_launcher_icons`
- Signing configuration present in `android/key.properties`

### iOS Configuration
- Standard FlutterActivity with GeneratedPluginRegistrant
- Custom app icons configured for all required sizes
- Launch screen with custom branding

### Dependencies
- `cupertino_icons: ^1.0.8` - iOS-style icons
- `flutter_lints: ^5.0.0` - Code quality enforcement
- `flutter_launcher_icons: ^0.14.1` - Custom app icon generation

## Implemented Features

### Scratch Learning Website
- **Home Page**: Child-friendly interface with colorful learning cards
- **Learning Sections**: Separate lessons for Motion, Looks, and Control blocks
- **Block Renderer**: Visual representation of Scratch blocks from text input
- **Interactive Testing**: Text-to-block conversion system for experimentation

### Scratch Block Rendering System
- **Authentic Appearance**: Blocks styled to match real Scratch colors and shapes
- **Block Types Supported**:
  - Motion (Blue #4C97FF): move, turn, go to
  - Looks (Purple #9966FF): say, think, show, hide
  - Control (Orange #FFAB19): repeat, forever, if/then, wait
  - Events (Yellow #FFD500): when flag clicked, when key pressed
- **Visual Features**:
  - Puzzle-piece connectors (notches and tabs)
  - Drop shadows and gradients
  - Category-specific icons
  - Rounded corners and proper spacing

### Text Parser
- Converts natural language text to visual Scratch blocks
- Supports nested control structures
- Recognizes common Scratch programming patterns
- Real-time block generation and preview

## Development Notes

- Built with Flutter for cross-platform web deployment
- Uses CustomPainter for precise block rendering
- Material Design 3 with custom orange theme
- Target audience: Children learning programming through Scratch
- Primary platform target: Web service (with mobile support)
- Tests use the `flutter_test` framework for widget testing
- Linting is configured via `flutter_lints` package with standard Flutter recommendations