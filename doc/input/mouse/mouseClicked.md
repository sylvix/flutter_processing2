# `mouseClicked()`

```dart
void mouseClicked()
```

The `mouseClicked()` function is called _after_ a mouse button has been pressed and then released.

Mouse and keyboard events only work when a program has `draw()`. Without `draw()`, the code is only run once and then stops listening for events.

## Examples

```dart
// Click within the image to change
// the value of the rectangle after
// after the mouse has been clicked

int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void mouseClicked() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
```
