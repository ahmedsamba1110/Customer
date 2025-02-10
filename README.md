
### Application structure
After successful build, your application structure should look like this:

After successful build, your application structure should look like this:
.
├─ android/ -- Android specific files
├─ assets/ -- Images, fonts, etc.
│  ├─ animations/ -- Lottie Animations
│  ├─ images/ -- Images
│  ├─ countryCodes/ -- country codes JSOn file
│  ├─ languages/ -- Localization files
│  ├─ fonts/ -- Fonts
│  ├─ mapThemes/ -- Map Themes
├─ ios/ -- iOS specific files
├─ lib/ -- Dart files
│  ├─ app/ -- App-level code (e.g. routes, theme, localization, assets naming, imports in single file)
│  ├─ cubits/ -- State management (used to manage the UI states according to server data)
│  ├─ data/ -- Data access
│  │  ├─ repository/ -- Module wise API and general method files. For example, UserRepository.dart
│  │  ├─ model/ -- to parse the JSON response from the server
│  ├─ ui/ -- UI components
│  │  ├─ screens/ -- Main screens
│  │  ├─ widgets/ -- Common widgets which are used in multiple screens
│  ├─ utils/ -- Utility files (e.g. constants, extensions, stripe services, notifications, etc.)
│  ├─ main.dart -- Dart entry point
│  ├─ firebase_options.dart -- Firebase configuration





### How to format your code?
- if your code is not formatted then run following command in your terminal to format code
  dart Tormat
### How you can improve code readability?
Resolve the errors and warnings that are shown in the application.
### Libraries and tools used
- BLoC - State management https://bloclibrary.dev
  cached_network_image -
  For storing
  internet image into cache
  https://pub.dev/packages/cached_network_image
### Support
If you have any problems or questions, go to our Discord channel, where we will help you as quickly as
