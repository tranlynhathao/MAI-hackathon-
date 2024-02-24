# MAI-hackathon-

## Medical Access Initiative

<img src="logo.png" alt="Medical Access Initiative Logo" width="300">

### Introduction
Medical Access Initiative is a comprehensive medical record management application designed to streamline the process of managing patient health records. It offers healthcare professionals and administrators a centralized platform to efficiently store, access, and update patient information securely.

### Features
- **Patient Management**: Easily add, search, and update patient records.
- **Medical History**: Keep track of patient medical history, diagnoses, treatments, and medications.
- **Appointment Scheduling**: Schedule and manage patient appointments and consultations.
- **Billing and Invoicing**: Generate bills and invoices for patient services.
- **Security**: Ensure data privacy and security with robust encryption and access control measures.
- **Integration**: Seamlessly integrate with existing hospital management systems and electronic health record (EHR) systems.
- **User-friendly Interface**: Intuitive and user-friendly interface for easy navigation and operation.

### Installation
To run the Medical Access Initiative application locally, follow these steps:
1. Clone the repository: ```https://github.com/tranlynhathao/MAI-hackathon-.git```
2. Navigate to the project directory: ```cd web\ demo```
3. Install dependencies: ```npm install```
4. Start the application: ```npm start```



### Usage
1. Access the application through your web browser.
2. Log in with your credentials or sign up for a new account.
3. Navigate through the dashboard to manage patient records, appointments, billing, etc.
4. Use the search functionality to quickly find specific patient records or appointments.

### Technologies Used
- Frontend: HTML, CSS, JavaScript, React.js
- Backend: Node.js, Express.js
- Database: MongoDB
- Authentication: JSON Web Tokens (JWT)
- Other: Redux, Bootstrap, Axios

### Repo Structure
```
.
├── AndroidStudioProjects
│   ├── Health App
│   ├── android
│   │   ├── app
│   │   │   ├── src
│   │   │   │   ├── debug
│   │   │   │   │   └── AndroidManifest.xml
│   │   │   │   ├── main
│   │   │   │   │   ├── java
│   │   │   │   │   │   ├── com
│   │   │   │   │   │   │   └── example
│   │   │   │   │   │   │       └── health
│   │   │   │   │   │   │           └── MainActivity.java
│   │   │   │   │   │   └── io
│   │   │   │   │   │       └── flutter
│   │   │   │   │   │           └── plugins
│   │   │   │   │   │               └── GeneratedPluginRegistrant.java
│   │   │   │   │   ├── res
│   │   │   │   │   │   ├── drawable
│   │   │   │   │   │   │   └── launch_background.xml
│   │   │   │   │   │   ├── drawable-v21
│   │   │   │   │   │   │   └── launch_background.xml
│   │   │   │   │   │   ├── mipmap-hdpi
│   │   │   │   │   │   │   └── ic_launcher.png
│   │   │   │   │   │   ├── mipmap-mdpi
│   │   │   │   │   │   │   └── ic_launcher.png
│   │   │   │   │   │   ├── mipmap-xhdpi
│   │   │   │   │   │   │   └── ic_launcher.png
│   │   │   │   │   │   ├── mipmap-xxhdpi
│   │   │   │   │   │   │   └── ic_launcher.png
│   │   │   │   │   │   ├── mipmap-xxxhdpi
│   │   │   │   │   │   │   └── ic_launcher.png
│   │   │   │   │   │   ├── values
│   │   │   │   │   │   │   └── styles.xml
│   │   │   │   │   │   └── values-night
│   │   │   │   │   │       └── styles.xml
│   │   │   │   │   └── AndroidManifest.xml
│   │   │   │   └── profile
│   │   │   │       └── AndroidManifest.xml
│   │   │   └── build.gradle
│   │   ├── gradle
│   │   │   └── wrapper
│   │   │       ├── gradle-wrapper.jar
│   │   │       └── gradle-wrapper.properties
│   │   ├── build.gradle
│   │   ├── gradle.properties
│   │   ├── gradlew
│   │   ├── gradlew.bat
│   │   ├── health_android.iml
│   │   ├── local.properties
│   │   └── settings.gradle
│   ├── assets
│   │   └── ing
│   │       ├── Cus.png
│   │       ├── Doctor.png
│   │       ├── Lich.jpg
│   │       ├── Lich.png
│   │       ├── Logo MAI.png
│   │       ├── Nghe.png
│   │       └── Note.png
│   ├── ios
│   │   ├── Flutter
│   │   │   ├── AppFrameworkInfo.plist
│   │   │   ├── Debug.xcconfig
│   │   │   ├── Generated.xcconfig
│   │   │   ├── Release.xcconfig
│   │   │   └── flutter_export_environment.sh
│   │   ├── Runner
│   │   │   ├── Assets.xcassets
│   │   │   │   ├── AppIcon.appiconset
│   │   │   │   │   ├── Contents.json
│   │   │   │   │   ├── Icon-App-1024x1024@1x.png
│   │   │   │   │   ├── Icon-App-20x20@1x.png
│   │   │   │   │   ├── Icon-App-20x20@2x.png
│   │   │   │   │   ├── Icon-App-20x20@3x.png
│   │   │   │   │   ├── Icon-App-29x29@1x.png
│   │   │   │   │   ├── Icon-App-29x29@2x.png
│   │   │   │   │   ├── Icon-App-29x29@3x.png
│   │   │   │   │   ├── Icon-App-40x40@1x.png
│   │   │   │   │   ├── Icon-App-40x40@2x.png
│   │   │   │   │   ├── Icon-App-40x40@3x.png
│   │   │   │   │   ├── Icon-App-60x60@2x.png
│   │   │   │   │   ├── Icon-App-60x60@3x.png
│   │   │   │   │   ├── Icon-App-76x76@1x.png
│   │   │   │   │   ├── Icon-App-76x76@2x.png
│   │   │   │   │   └── Icon-App-83.5x83.5@2x.png
│   │   │   │   └── LaunchImage.imageset
│   │   │   │       ├── Contents.json
│   │   │   │       ├── LaunchImage.png
│   │   │   │       ├── LaunchImage@2x.png
│   │   │   │       ├── LaunchImage@3x.png
│   │   │   │       └── README.md
│   │   │   ├── Base.lproj
│   │   │   │   ├── LaunchScreen.storyboard.xml
│   │   │   │   └── Main.storyboard.xml
│   │   │   ├── AppDelegate.swift
│   │   │   ├── GeneratedPluginRegistrant.h
│   │   │   ├── GeneratedPluginRegistrant.m
│   │   │   ├── Info.plist
│   │   │   └── Runner-Bridging-Header.h
│   │   ├── Runner.xcodeproj
│   │   │   ├── project.xcworkspace
│   │   │   │   ├── xcshareddata
│   │   │   │   │   ├── IDEWorkspaceChecks.plist
│   │   │   │   │   └── WorkspaceSettings.xcsettings.xml
│   │   │   │   └── contents.xcworkspacedata.xml
│   │   │   ├── xcshareddata
│   │   │   │   └── xcschemes
│   │   │   │       └── Runner.xcscheme.xml
│   │   │   └── project.pbxproj
│   │   ├── Runner.xcworkspace
│   │   │   ├── xcshareddata
│   │   │   │   ├── IDEWorkspaceChecks.plist
│   │   │   │   └── WorkspaceSettings.xcsettings.xml
│   │   │   └── contents.xcworkspacedata.xml
│   │   └── RunnerTests
│   │       └── RunnerTests.swift
│   ├── lib
│   │   └── main.dart
│   ├── linux
│   │   ├── flutter
│   │   │   ├── CMakeLists.txt
│   │   │   ├── generated_plugin_registrant.cc
│   │   │   ├── generated_plugin_registrant.h
│   │   │   └── generated_plugins.cmake
│   │   ├── CMakeLists.txt
│   │   ├── main.cc
│   │   ├── my_application.cc
│   │   └── my_application.h
│   ├── macos
│   │   ├── Flutter
│   │   │   ├── ephemeral
│   │   │   │   ├── Flutter-Generated.xcconfig
│   │   │   │   └── flutter_export_environment.sh
│   │   │   ├── Flutter-Debug.xcconfig
│   │   │   ├── Flutter-Release.xcconfig
│   │   │   └── GeneratedPluginRegistrant.swift
│   │   ├── Runner
│   │   │   ├── Assets.xcassets
│   │   │   │   └── AppIcon.appiconset
│   │   │   │       ├── Contents.json
│   │   │   │       ├── app_icon_1024.png
│   │   │   │       ├── app_icon_128.png
│   │   │   │       ├── app_icon_16.png
│   │   │   │       ├── app_icon_256.png
│   │   │   │       ├── app_icon_32.png
│   │   │   │       ├── app_icon_512.png
│   │   │   │       └── app_icon_64.png
│   │   │   ├── Base.lproj
│   │   │   │   └── MainMenu.xib
│   │   │   ├── Configs
│   │   │   │   ├── AppInfo.xcconfig
│   │   │   │   ├── Debug.xcconfig
│   │   │   │   ├── Release.xcconfig
│   │   │   │   └── Warnings.xcconfig
│   │   │   ├── AppDelegate.swift
│   │   │   ├── DebugProfile.entitlements.xml
│   │   │   ├── Info.plist
│   │   │   ├── MainFlutterWindow.swift
│   │   │   └── Release.entitlements.xml
│   │   ├── Runner.xcodeproj
│   │   │   ├── project.xcworkspace
│   │   │   │   └── xcshareddata
│   │   │   │       └── IDEWorkspaceChecks.plist
│   │   │   ├── xcshareddata
│   │   │   │   └── xcschemes
│   │   │   │       └── Runner.xcscheme.xml
│   │   │   └── project.pbxproj
│   │   ├── Runner.xcworkspace
│   │   │   ├── xcshareddata
│   │   │   │   └── IDEWorkspaceChecks.plist
│   │   │   └── contents.xcworkspacedata.xml
│   │   └── RunnerTests
│   │       └── RunnerTests.swift
│   ├── test
│   │   └── widget_test.dart
│   ├── web
│   │   ├── icons
│   │   │   ├── Icon-192.png
│   │   │   ├── Icon-512.png
│   │   │   ├── Icon-maskable-192.png
│   │   │   └── Icon-maskable-512.png
│   │   ├── favicon.png
│   │   ├── index.html
│   │   └── manifest.json
│   ├── windows
│   │   ├── flutter
│   │   │   ├── CMakeLists.txt
│   │   │   ├── generated_plugin_registrant.cc
│   │   │   ├── generated_plugin_registrant.h
│   │   │   └── generated_plugins.cmake
│   │   ├── runner
│   │   │   ├── resources
│   │   │   │   └── app_icon.ico
│   │   │   ├── CMakeLists.txt
│   │   │   ├── Runner.rc
│   │   │   ├── flutter_window.cpp
│   │   │   ├── flutter_window.h
│   │   │   ├── main.cpp
│   │   │   ├── resource.h
│   │   │   ├── runner.exe.manifest.xml
│   │   │   ├── utils.cpp
│   │   │   ├── utils.h
│   │   │   ├── win32_window.cpp
│   │   │   └── win32_window.h
│   │   └── CMakeLists.txt
│   ├── README.md
│   ├── analysis_options.yaml
│   ├── health.iml
│   ├── pubspec.lock
│   └── pubspec.yaml
├── model
│   ├── __pycache__
│   │   └── flask.cpython-311.pyc
│   ├── app.py
│   ├── diabetes.csv
│   ├── diabetes_report.html
│   ├── model.py
│   └── svm_diabetes_model.pkl
├── web demo
│   ├── backend
│   │   └── app.py
│   └── frontend
│       ├── public
│       │   ├── favicon.ico
│       │   ├── index.html
│       │   ├── logo192.png
│       │   ├── logo512.png
│       │   ├── manifest.json
│       │   └── robots.txt
│       ├── src
│       │   ├── App.css
│       │   ├── App.js
│       │   ├── App.test.js
│       │   ├── index.css
│       │   ├── index.js
│       │   ├── logo.svg
│       │   ├── reportWebVitals.js
│       │   └── setupTests.js
│       ├── README.md
│       ├── package-lock.json
│       └── package.json
├── web test
│   ├── index.html
│   ├── medicalRecords.js
│   ├── medicalRecords.ts
│   ├── styles.css
│   └── test.html
├── LICENSE
├── README.md
├── addme.md
└── logo.png
```

### Contributors
- HAO, Tran Ly Nhat (haotran04022005@gmail.com)

### License
This project is licensed under the [MIT License](LICENSE).

### Contact Us
For inquiries or support, please contact us at hcsaifuture@gmail.com. We welcome your feedback and suggestions!

---
Copyright © 2024 Medical Access Initiative. All rights reserved.
