<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.10+-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Dart-3.10+-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-brightgreen?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Internship-Week%201-7C3AED?style=for-the-badge"/>
</p>

<h1 align="center">🔐 Flutter Login App</h1>

<p align="center">
  A Flutter application built as part of <strong>Week 1</strong> of the DevelopersHub Corporation Flutter Development Internship. Covers environment setup, UI layout with core widgets, screen navigation, and form validation.
</p>

---

## 📱 Screenshots

> Add screenshots of your Login Screen and Home Screen here.

---

## ✨ Features

| Feature | Description |
|---|---|
| 🔐 Login Screen | Clean login UI built with core Flutter widgets |
| ✅ Form Validation | Email format check and password field validation |
| 🧭 Navigation | Screen-to-screen transition using `Navigator.push()` |
| 🏠 Home Screen | Destination screen after successful login |
| 📱 Responsive Layout | Adapts to different screen sizes using Flutter's widget system |

---

## 🗂️ Project Structure

```
lib/
├── main.dart              # App entry point and MaterialApp setup
├── screens/
│   ├── login_screen.dart  # Login UI with form validation
│   └── home_screen.dart   # Home screen (post-login destination)
```

---

## 🚀 Getting Started

### Prerequisites

- Flutter SDK `>=3.10.0`
- Dart SDK `>=3.10.0`
- Android Studio **or** VS Code with Flutter & Dart plugins

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/ahmed-khan-afk/developers_hub_corporation_intern.git

# 2. Navigate into the project
cd developers_hub_corporation_intern

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
```

To run on a specific platform:

```bash
flutter run -d chrome       # Web
flutter run -d android      # Android
flutter run -d ios          # iOS
```

---

## 📦 Dependencies

| Package | Version | Purpose |
|---|---|---|
| [`cupertino_icons`](https://pub.dev/packages/cupertino_icons) | ^1.0.8 | iOS-style icons |

No third-party packages — built entirely with Flutter's core widget library.

---

## 🧠 Concepts Covered

This project was built to practice the following Flutter fundamentals:

**Widgets used:**
- `Scaffold`, `AppBar` — basic screen structure
- `Column`, `Row` — vertical and horizontal layout
- `Container`, `Padding`, `SizedBox` — spacing and decoration
- `TextFormField` — user input with built-in validation
- `ElevatedButton` — tappable action button
- `Form` + `GlobalKey<FormState>` — form state management

**Navigation:**
```dart
// Navigate to Home Screen on successful login
Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => const HomeScreen()),
);
```

**Form Validation:**
```dart
// Email validation
validator: (value) {
  if (value == null || value.isEmpty) return 'Please enter your email';
  if (!value.contains('@')) return 'Please enter a valid email';
  return null;
},

// Password validation
validator: (value) {
  if (value == null || value.isEmpty) return 'Please enter your password';
  if (value.length < 6) return 'Password must be at least 6 characters';
  return null;
},
```

---

## 🌐 Platform Compatibility

| Platform | Status |
|---|---|
| Android | ✅ Supported |
| iOS | ✅ Supported |
| Web | ✅ Supported |
| Windows / macOS / Linux | ✅ Desktop scaffold included |

---

## 📚 Internship Context

This project was built for **Week 1** of the [DevelopersHub Corporation](https://developershub.com) Flutter Development Internship.

**Week 1 Task Requirements:**
- Set up Flutter development environment with Android Studio
- Create a new Flutter project
- Build a Login Screen using `TextFormField`, `Column`, `Row`, and `Container` widgets
- Implement navigation from Login Screen to Home Screen using `Navigator.push()`
- Add form validation for email and password fields

**Week 2 →** [Glassmorphic To-Do List App with SharedPreferences](https://github.com/ahmed-khan-afk/developers_hub_corporation_intern_2)

---

## 👨‍💻 Author

**Ahmed Khan**
Flutter Development Intern @ DevelopersHub Corporation
[GitHub](https://github.com/ahmed-khan-afk)

---

<p align="center">Built with 💜 Flutter — DevelopersHub Corporation Internship Week 1</p>
