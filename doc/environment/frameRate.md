# `frameRate`

```dart
int frameRate
```

Contains the approximate frame rate of the software as it executes.
The initial value is 10 fps and is updated with each frame.
The value is averaged (integrated) over several frames.
As such, this value won't be valid until after 5-10 frames.
