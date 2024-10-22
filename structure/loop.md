# `loop()`

```dart
void loop()
```

By default, Processing loops through `draw()` continuously, executing the code within it. However, the `draw()` loop may be stopped by calling `noLoop()`. In that case, the `draw()` loop can be resumed with `loop()`.

## Examples

```dart
void setup() {
  size(200, 200);
  noLoop();  // draw() will not loop
}

float x = 0;

void draw() {
  background(204);
  x = x + .1;
  if (x > width) {
    x = 0;
  }
  line(x, 0, x, height);
}

void mousePressed() {
  loop();  // Holding down the mouse activates looping
}

void mouseReleased() {
  noLoop();  // Releasing the mouse stops looping draw()
}
```
