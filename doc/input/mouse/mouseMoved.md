# `mouseMoved()`

```dart
void mouseMoved()
```

The `mouseMoved()` function is called every time the mouse moves and a mouse button is not pressed. (If a button is being pressed, `mouseDragged()` is called instead.)

Mouse and keyboard events only work when a program has `draw()`. Without `draw()`, the code is only run once and then stops listening for events.
