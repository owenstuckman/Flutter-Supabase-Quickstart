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
