# `mouseButton`

```dart
MouseButton? mouseButton
```

When a mouse button is pressed, the value of the `mouseButton` property is set to either `MouseButton.left`, `MouseButton.right`, or `MouseButton.center`, depending on which button is pressed. (If no button is pressed, mouseButton may be reset to `null`. For that reason, it's best to use `mousePressed` first to test if any button is being pressed, and only then test the value of `mouseButton`

## Examples

```dart
// Click within the image and press
// the left and right mouse buttons to
// change the value of the rectangle
void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    fill(0);
  } else if (mousePressed && (mouseButton == RIGHT)) {
    fill(255);
  } else {
    fill(126);
  }
  rect(25, 25, 50, 50);
}
```

```dart
// Click within the image and press
// the left and right mouse buttons to
// change the value of the rectangle
void draw() {
  rect(25, 25, 50, 50);
}

void mousePressed() {
  if (mouseButton == LEFT) {
    fill(0);
  } else if (mouseButton == RIGHT) {
    fill(255);
  } else {
    fill(126);
  }
}
```
