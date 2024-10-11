# `mouseY`

```dart
int mouseY
```

The `mouseY` property always contains the current horizontal coordinate of the mouse.

Note that the sketch can only track the mouse position when the pointer is over the current sketch. The default value of `mouseY` is `0`, so `0` will be returned until the mouse moves in front of the sketch. (This typically happens when a sketch is first run.) Once the mouse moves away from the sketch, `mouseY` will continue to report its most recent position.
