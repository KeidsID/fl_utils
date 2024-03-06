<!--
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages).

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages).
-->

# fl_utils

![Dart version](https://img.shields.io/badge/^3.0.0-red?style=flat&logo=dart&logoColor=2cb8f7&labelColor=333333&color=01579b)
![Flutter](https://img.shields.io/badge/^3.10.0-red?style=flat&logo=flutter&logoColor=2cb8f7&labelColor=333333&color=01579b)

Simple flutter utilities such as BuildContext shorthand, debounce extension,
SizedScrollableArea widget, and more.

This package depend on SDKs so it can be used in any Flutter project.

- [Available Utils](#available-utils)

## Getting started

Add `fl_utils` to your dependencies.

```
flutter add fl_utils
```

or manually add it to your `pubspec.yaml` file:

```yaml
dependencies:
  fl_utils: ^1.0.0
```

Then you can use it in your project.

## Usage

shorthands extension on [BuildContext]:

```dart
import 'package:flutter/material.dart';
import 'package:fl_utils/fl_utils.dart';

Builder(builder: (context) {
  context.theme; // instead of `Theme.of(context)`
  context.mediaQuery; // instead of `MediaQuery.of(context)`

  return const Placeholder();
});
```

debounce on [TextField]:

```dart
import 'package:flutter/material.dart';
import 'package:fl_utils/fl_utils.dart';

Builder(builder: (context) {
  return TextField(
    onChanged: (text) {
      debugPrint('Called after half a second of not typing');
    }.debounce(),
  );
});
```

## Available Utils

### Extensions

- on [BuildContext]:

  - `theme`, shorthand for `Theme.of(context)`.
  - `colorScheme`, shorthand for `Theme.of(context).colorScheme`.
  - `textTheme`, shorthand for `Theme.of(context).textTheme`.
  - `mediaQuery`, shorthand for `MediaQuery.of(context)`.
  - `scaffold`, shorthand for `Scaffold.of(context)`.
  - `scaffoldMessenger`, shorthand for `ScaffoldMessenger.of(context)`.

- on [Text]:

  - `applyOpacity`, create a new copy of [Text] with applied opacity.

- on [ValueChanged]:
  - `debounce`, prevent callback from being called too often.

### Widgets

- `SizedScrollableArea`, a scrollable area that can be sized. It act as extra
  scrollable area (which detect touch and mouse wheel pointer) if your
  [Scrollable] widget must have fixed size.

### Others

- `DialogPage`, utilities for "go_router" package to show dialog. Did'nt depend
  on "go_router" package so "fl_utils" can be used without it.

- `useUrlPathStrategy`, use path url strategy to remove hash from url path
  (https://github.com/flutter/flutter/issues/89763).

<!--
## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more. -->
