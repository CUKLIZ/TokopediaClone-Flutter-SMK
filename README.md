# 🛍️ Tokopedia Clone - Flutter UI

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-02569B?style=for-the-badge&logo=flutter&logoColor=white"/>
  <img src="https://img.shields.io/badge/Dart-0175C2?style=for-the-badge&logo=dart&logoColor=white"/>
  <img src="https://img.shields.io/badge/Platform-Android%20%7C%20iOS-green?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge"/>
</p>

<p align="center">
  A mobile UI clone of Tokopedia built with Flutter. This project is a front-end implementation that replicates the look and feel of the Tokopedia e-commerce application.
</p>

---

## 📱 Screenshots

> *Add your app screenshots here*

| Home Screen | Product Detail | Cart | Account |
|:-----------:|:--------------:|:----:|:-------:|
| ![Home](screenshots/home.png) | ![Detail](screenshots/detail.png) | ![Cart](screenshots/cart.png) | ![Account](screenshots/account.png) |

---

## ✨ Features

- 🔍 **Search Bar** — Real-time product search
- 🎠 **Promo Banner** — Auto-sliding banner with 3 promotional slides
- 📂 **Category Filter** — Electronics, Food, Deals, Fashion
- 🔃 **Sort & Filter** — Sort by price, rating, or newest
- 🛒 **Functional Cart** — Add, remove, and update product quantity
- ❤️ **Wishlist** — Save favorite products
- 📦 **Product Detail** — Full detail page with description and store info
- 🧭 **Bottom Navigation** — Home, Cart, Account

---

## 🗂️ Project Structure

```
tokped/
├── assets/
│   ├── images/               # Product images
│   └── logo/                 # App logo assets
├── lib/
│   ├── main.dart
│   ├── models/
│   │   ├── product.dart          # Product model & sample data
│   │   ├── app_theme.dart        # Global colors & text styles
│   │   └── cart_item.dart        # Cart item model
│   ├── screens/
│   │   ├── home_screen.dart
│   │   ├── product_detail_screen.dart
│   │   ├── cart_screen.dart
│   │   └── account_screen.dart
│   ├── services/
│   │   └── cart_manager.dart     # Cart & wishlist state management
│   └── widgets/
│       ├── product_card.dart
│       ├── category_item.dart
│       ├── promo_banner.dart
│       └── sort_filter_bar.dart
└── screenshots/              # App screenshots
```

---

## 🚀 Getting Started

### Prerequisites
- Flutter SDK `>=3.0.0`
- Android Studio / VS Code
- Android Emulator or physical device

### Installation

```bash
# 1. Clone the repository
git clone https://github.com/CUKLIZ/Tokopedia-Clone-Flutter.git

# 2. Navigate to the project directory
cd Tokopedia-Clone-Flutter

# 3. Install dependencies
flutter pub get

# 4. Run the app
flutter run
```

> **Note:** Place product images inside the `assets/images/` folder with these exact names:
> `headphones.jpg`, `iphone.jpg`, `sneakers.jpg`, `avocado.jpg`, `smartwatch.jpg`, `tshirt.jpg`

---

## 🧰 Tech Stack

| Technology | Purpose |
|------------|---------|
| Flutter | UI Framework |
| Dart | Programming Language |
| `intl` | Indonesian Rupiah currency formatting |
| `ChangeNotifier` | Cart & wishlist state management |
| `flutter_launcher_icons` | Custom app icon (Android & iOS) |
| `flutter_native_splash` | Custom splash screen |

---

## 📦 Dependencies

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8
  intl: ^0.20.2

dev_dependencies:
  flutter_lints: ^6.0.0
  flutter_launcher_icons: ^0.14.3
  flutter_native_splash: ^2.4.6
```

---

## 🎨 Design System

| Element | Value |
|---------|-------|
| Primary Color | `#03AC0E` (Tokopedia Green) |
| Accent Color | `#FF7700` (Orange) |
| Star Color | `#FFBB00` (Yellow) |
| Font | Roboto |

---

## 👤 Author

**CUKLIZ**
- GitHub: [@CUKLIZ](https://github.com/CUKLIZ)

---

## 📄 License

This project was created for front-end certification purposes. Not affiliated with Tokopedia / GoTo Group.
