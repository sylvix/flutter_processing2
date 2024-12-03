# `mousePressed()`

```dart
void mousePressed()
```

The `mousePressed()` function is called once after every time a mouse button is pressed. The `mouseButton` property can be used to determine which button has been pressed.

Mouse and keyboard events only work when a program has `draw()`. Without `draw()`, the code is only run once and then stops listening for events.

## Examples

```dart
// Click within the image to change
// the value of the rectangle

int value = 0;

void draw() {
  fill(value);
  rect(25, 25, 50, 50);
}

void mousePressed() {
  if (value == 0) {
    value = 255;
  } else {
    value = 0;
  }
}
```
