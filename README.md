# flutter_supabase_quickstart

A quickstart for using Supabase with Flutter.

# Prerequisites

- Flutter installed
- Supabase CLI installed

## Getting Started

1. Clone the repository

```bash
git clone https://github.com/owenstuckman/flutter_supabase_quickstart.git
```

2. Install dependencies

```bash
flutter pub get
```

## Supabase Setup

3. Setup Supabase

- Create a new project in Supabase

- Edit the `lib/global_content/dynamic_content/databse.dart`
- Making edits to the file will setup calling the supabase API to get dynamic content from the database

4. Setup Supabase Auth
- Edit the `lib/global_content/dynamic_content/auth.dart`
- Making edits to the file will setup calling the supabase API to setup user authentication
- Basic functions to sign up, login, etc. are included

5. Setup Supabase Edge Functions
- In cmdline, run `supabase login` and follow the instructions to login
- To create a new edge function, run `supabase functions new <name>`

For Local Development:
- Run `supabase start` to start the Supabase server
- Run `supabase status` to check that the server is running

Production:
- Run `supabase deploy` to deploy the project to Supabase
- This will sync the local edge functions with the remote edge functions

## Running the App

4. Run the app

```bash
flutter run
```
## Editing the App

- The app is built with Flutter and Dart, so you can edit the app by editing the Dart files
- First Look at `lib/main.dart`
- This is the main file that runs the app
- It is a stateful widget that contains the app's state and the app's UI
- The app's state is stored in the `_MyAppState` class
- The app's UI is stored in the `build` method
- From there, explore the home page and the other pages to understand the app's structure and how to edit the app
- App contains auth, database, and edge functions. Alongside, has a notification system and dynamic themes.


