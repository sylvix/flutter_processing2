# `setup()`

```dart
FutureOr<void> setup() async
```

The setup() function is run once, when the program starts. It's used to define initial environment properties such as screen size and to load media such as images as the program starts.

If the sketch is a different dimension than the default, the size() function or fullScreen() function must be the first line in setup().
