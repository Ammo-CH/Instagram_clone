Instagram Clone Flutter App
Overview:

This is a Flutter-based Instagram clone application designed to showcase dynamic content such as images and videos from the internet. The app demonstrates custom widget usage, navigation handling, and reusable UI components.

-----Features------

Dynamic Content: Fetches and displays images and videos from the internet.

Custom Widgets:

ReelsWidget displays a reel item; data is passed by creating objects of this widget.

Custom reusable UI components are implemented throughout the app.

Navigation Bar:

Works on the Home Screen.

Other screens display a placeholder message: “App is under build mode, try again later.”

User Interface: Clean and responsive design, similar to Instagram’s look and feel.

Getting Started
Prerequisites

Flutter SDK installed

Android Studio / VS Code (or any IDE)

Internet connection for fetching media content

Installation

Clone the repository:

git clone <your-repo-url>


Navigate to the project folder:

cd <project-folder>


Get dependencies:

flutter pub get


Run the app:

flutter run

Code Structure

main.dart → Entry point, initializes the home screen.

widgets/ → Contains all custom widgets, e.g., ReelsWidget.

screens/ → Contains Home Screen and placeholder screens for under-construction features.

Future Improvements

Implement full navigation for all screens.

Add authentication (sign-in/sign-up).

Allow uploading and posting content.

Enhance UI animations and interactions.
