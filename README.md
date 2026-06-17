<p align="center">
  <img src="https://img.shields.io/badge/Flutter-3.10+-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Dart-3.10+-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS%20%7C%20Web-brightgreen?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Internship-Week%201-7C3AED?style=for-the-badge"/>
</p>

🔐 Flutter Login App</h1>

<p align="center">
  A Flutter application built as part of <strong>Week 1</strong> of the DevelopersHub Corporation Flutter Development Internship. Covers environment setup, UI layout with core widgets, screen navigation, and form validation.
</p>

---

## 📱 Screenshots

<p align="center">
  <img width="24%" alt="Screenshot 4" src="https://github.com/user-attachments/assets/9caeadda-0f1f-4f46-9187-5224f8fdb39b" />
  <img width="24%" alt="Screenshot 1" src="https://github.com/user-attachments/assets/6d22a8f6-7226-455f-b81d-de6e33fad4c9" />
  <img width="24%" alt="Screenshot 2" src="https://github.com/user-attachments/assets/35e702d6-bbcc-4bba-a5c6-f6852401e56f" />
  <img width="24%" alt="Screenshot 3" src="https://github.com/user-attachments/assets/25d4d5ae-c7b1-4ba0-83d1-efc5aad6d001" />
</p>

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
├── main.dart                          # App entry point and MaterialApp setup
├── theme.dart                         # App-wide colors, text styles, and theme data
├── home_screen.dart                   # Home screen shown after login
├── login_form.dart                    # Login screen with form and navigation logic
│
├── high_level_widgets/                # Composite widgets built from low-level ones
│   ├── email_field.dart               # Email input with validation
│   ├── password_field.dart            # Password input with show/hide toggle
│   ├── profile_summary_card.dart      # User profile summary card
│   ├── settings_group.dart            # Grouped settings section widget
│   └── settings_row.dart              # Individual settings row item
│
└── low_level_widgets/                 # Primitive, single-responsibility widgets
    ├── avatar.dart                    # Circular avatar/profile image widget
    ├── icon_badge.dart                # Icon with optional badge count
    ├── link_button.dart               # Tappable text link button
    ├── outline_action_button.dart     # Bordered action button variant
    ├── primary_button.dart            # Main filled CTA button
    ├── section_label.dart             # Section heading/label text
    └── text_field.dart                # Base custom text input widget
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

---

## 👨‍💻 Author

**Ahmed Khan**
Flutter Development Intern @ DevelopersHub Corporation
[GitHub](https://github.com/ahmed-khan-afk)

---

<p align="center">Built with 💜 Flutter</p>
