
# Flutter Pokémon App

This Flutter project is a Pokémon listing app that integrates with the PokeAPI v2. The app allows users to browse for various Pokémon, view detailed information, and explore their characteristics. This project demonstrates the use of state management with MobX, HTTP requests with Dio, dependencie injection with Provider and custom fonts with Google Fonts.

## Features

- List all Pokémon with pagination.
- Display detailed information about each Pokémon, including type, stats, and abilities.
- Offline caching of images using `cached_network_image`.
- Responsive design for various screen sizes.

## Technologies Used

- **Flutter**: The framework used for building the app.
- **MobX**: For reactive state management.
- **Dio**: For making HTTP requests to the PokeAPI.
- **Provider**: For dependency injection.
- **Google Fonts**: For custom typography.
- **cached_network_image**: For efficient image caching.

## Getting Started

### Prerequisites

Before running the app, make sure you have the following installed:

- [Flutter](https://flutter.dev/docs/get-started/install) (version 3.22)
- [Dart](https://dart.dev/get-dart)
- [Android Studio](https://developer.android.com/studio) or [Visual Studio Code](https://code.visualstudio.com/)

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/drklucas/versotech-pokemon-list.git
   ```

2. Navigate to the project directory:

   ```bash
   cd versotech-pokemon-list/app
   ```

3. Install the dependencies:

   ```bash
   flutter pub get
   ```

### Running the App

1. Connect a device or start an emulator.

2. Run the app:

   ```bash
   flutter run
   ```

## Project Structure

```bash
lib/
├── main.dart                 # Entry point of the application
├── models/                   # Data models
├── controllers/              # MobX controllers for state management
├── services/                 # API services and HTTP requests
├── routes/                   # App and API routes 
├── providers/                # Provider for dependencie injections
├── widgets/                  # UI screens and widgets
└── utils/                    # Utility functions and constants
```

## Customizing the App Theme

To apply styles throughout the app, the theme is configured in `lib/config/theme.dart`. Text styles and colors are defined in the `ThemeData` and can be accessed globally within the app.

## Handling Errors

Error handling is done using Dio's interceptors, which allows you to manage network errors and display appropriate messages to the user.
