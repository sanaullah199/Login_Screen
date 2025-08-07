Flutter Login Screen App
A simple and responsive Flutter Login UI built for practice or as a starting point for mobile apps. This screen includes a logo, email/password fields, password visibility toggle, login button, and a link to navigate to the signup screen.

🚀 Features
Circular logo image at top

Email and password input fields

Password visibility toggle

"Log In" button with navigation to HomeScreen

"Sign Up" button navigating to SignUpScreen

Responsive and scrollable layout

Styled using Material components

📂 Folder Structure
css
Copy
Edit
lib/
├── main.dart
├── view/
│   ├── homescreen/
│   │   └── home_screen.dart
│   ├── loginscreen/
│   │   └── login_screen.dart
│   └── signupscreen/
│       └── signup_screen.dart
assets/
└── logo.jpg
🛠️ Technologies
Flutter SDK

Dart

Material Design

📷 UI Preview
(Add screenshots or screen recordings here)

🔧 Getting Started
Clone the repository

bash
Copy
Edit
git clone https://github.com/sanaullah199/Login_Screen.git
cd Login_Screen
Get Flutter dependencies

bash
Copy
Edit
flutter pub get
Run the app

bash
Copy
Edit
flutter run
📦 Dependencies
Ensure the following dependency is in your pubspec.yaml:

yaml
Copy
Edit
flutter:
  assets:
    - assets/logo.jpg
Also, don't forget to place logo.jpg inside your assets/ folder.
