# swipe_loan

A modern Flutter FinTech dashboard application developed as part of the swipe_loan Flutter assessment.

The application is designed using **Clean Architecture**, **BLoC State Management**, and reusable UI components to deliver a scalable and maintainable codebase while closely matching the provided Figma design.

---

## 🚀 Features

### Dashboard

- User Greeting Section
- Instant Loan Banner
- Credit Score Improvement Module
- Credit Score Progress Graph
- Earn Coins Rewards Card
- Credit Card Payment Section
- Lower Interest Rate Eligibility Cards
- Loan Recommendation Banner
- Bill Payment Categories
- Daily Spending Report
- Explore More Section
- Customer Support Banner
- Custom Bottom Navigation

### Architecture

- Clean Architecture
- Feature-Based Folder Structure
- Repository Pattern
- BLoC State Management
- Reusable Widgets
- Responsive UI Design

---

## 🛠 Tech Stack

- Flutter
- Dart
- flutter_bloc
- fl_chart
- percent_indicator
- Google Fonts

---

## 📦 Dependencies

```yaml
flutter_bloc: ^9.1.1
equatable: ^2.0.5
percent_indicator: ^4.2.3
fl_chart: ^0.68.0
google_fonts: ^6.2.1
```


---

## 🧠 State Management

This project uses **BLoC (Business Logic Component)** for state management.

### Flow

```text
UI
 ↓
Event
 ↓
Bloc
 ↓
Repository
 ↓
Datasource
 ↓
State
 ↓
UI
```

---

------------------------------------------------------------------------

## 📦 Setup Instructions

### 1️⃣ Clone the repository

``` bash
git clone https://github.com/abhig9696/loan_app.git
cd loan_app
```

### 2️⃣ Install dependencies

``` bash
flutter pub get
```

### 3️⃣ Run the app

``` bash
flutter run

### Generate APK

```bash
flutter build apk --release
```

APK Output:

```text
build/app/outputs/flutter-apk/app-release.apk
```

---

## 👨‍💻 Developed By

Abhijit Gaikwad

Flutter Developer

