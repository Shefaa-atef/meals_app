# Meals App

A Flutter recipe browser with categories, meal details, favorites, and dietary filters. State is managed with Riverpod.

## Features

- Browse meals by category.
- Read ingredients and preparation steps.
- View preparation time, complexity, and affordability.
- Toggle favorites and browse them from a separate tab.
- Filter for gluten-free, lactose-free, vegetarian, and vegan meals.

## Requirements

- Flutter with Dart `>=2.19.2 <3.0.0`, as declared in `pubspec.yaml`.
- A configured device, emulator, or supported browser target. Run `flutter doctor` to check your environment.

## Run locally

```sh
git clone https://github.com/Shefaa-atef/meals_app.git
cd meals_app/meals_app
flutter pub get
flutter run
```

Use `flutter devices` to list targets and `flutter run -d <device-id>` to select one.

## Source guide

| Path inside the app | Purpose |
| --- | --- |
| `lib/data/dummy_data.dart` | Bundled categories and meals. |
| `lib/screens/` | Category, meal, detail, filter, and tab screens. |
| `lib/providers/` | Meal, favorite, and filter state. |
| `lib/models/` | Category and meal models. |

## Development checks

Run from the directory containing `pubspec.yaml`:

```sh
flutter analyze
flutter test
```

The repository includes a test scaffold; these commands do not imply that the tests cover the app's current behavior.

## Current behavior and limitations

Use a Flutter SDK whose bundled Dart version matches the declared range. The current manifest excludes Dart 3; upgrading Flutter requires a separate dependency migration.

Recipes are bundled with the app. Meal images load from remote URLs. Favorites and filters are held in memory and reset when the app restarts.
