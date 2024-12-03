# `isMousePressed`

```dart
bool isMousePressed;
```

The `isMousePressed` property stores whether a mouse button has been pressed. The `mouseButton` property can be used to determine which button has been pressed.

Mouse and keyboard events only work when a program has `draw()`. Without `draw()`, the code is only run once and then stops listening for events.

## Examples

```dart
// Click within the image to change
// the value of the rectangle
void draw() {
  if (mousePressed == true) {
    fill(0);
  } else {
    fill(255);
  }
  rect(25, 25, 50, 50);
}
```
