# `mouseMoved()`

```dart
void mouseMoved()
```

The `mouseMoved()` function is called every time the mouse moves and a mouse button is not pressed. (If a button is being pressed, `mouseDragged()` is called instead.)

Mouse and keyboard events only work when a program has `draw()`. Without `draw()`, the code is only run once and then stops listening for events.

## Examples

```dart
// Move the mouse across the image
// to change its value

int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void mouseMoved() {
  value = value + 5;
  if (value > 255) {
    value = 0;
  }
}
```
