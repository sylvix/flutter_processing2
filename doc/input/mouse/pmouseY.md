# `pmouseY`

```dart
int pmouseY
```

The `pmouseY` property always contains the vertical position of the mouse in the frame previous to the current frame. More detailed information about how `pmouseY` is updated inside of `draw()` and mouse events is explained in the reference for `pmouseX`.

## Examples

```dart
// Move the mouse quickly to see the difference
// between the current and previous position
void draw() {
  background(204);
  line(20, mouseY, 80, pmouseY);
  println(mouseY + " : " + pmouseY);
}
```
