# `pmouseX`

```dart
int pmouseX
```

The `pmouseX` property always contains the horizontal position of the mouse in the frame previous to the current frame.

You may find that `pmouseX` and `pmouseY` have different values when referenced inside of `draw()` and inside of mouse events like `mousePressed()` and `mouseMoved()`. Inside `draw()`, `pmouseX` and `pmouseY` update only once per frame (once per trip through the `draw()` loop). But inside mouse events, they update each time the event is called. If these values weren't updated immediately during events, then the mouse position would be read only once per frame, resulting in slight delays and choppy interaction. If the mouse variables were always updated multiple times per frame, then something like `line(pmouseX, pmouseY, mouseX, mouseY)` inside `draw()` would have lots of gaps, because pmouseX may have changed several times in between the calls to `line()`.

If you want values relative to the previous frame, use `pmouseX` and `pmouseY` inside `draw()`. If you want continuous response, use `pmouseX` and `pmouseY` inside the mouse event functions.

## Examples

```dart
// Move the mouse quickly to see the difference
// between the current and previous position
void draw() {
  background(204);
  line(mouseX, 20, pmouseX, 80);
  println(mouseX + " : " + pmouseX);
}
```
