# `mouseWheel()`

```dart
void mouseWheel(double count)
```

The code within the `mouseWheel()` event function is run when the mouse wheel is moved. (Some mice don't have wheels and this function is only applicable with mice that have a wheel.) The `count` argument passed within `mouseWheel()` returns positive values when the mouse wheel is rotated down (toward the user), and negative values for the other direction (up or away from the user). On OS X with "natural" scrolling enabled, the values are opposite.

Mouse and keyboard events only work when a program has `draw()`. Without `draw()`, the code is only run once and then stops listening for events.

## Examples

```dart
void setup() {
  size(100, 100);
}

void draw() {}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
}

```
