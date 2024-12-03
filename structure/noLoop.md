# `noLoop()`

```dart
void noLoop()
```

Stops Processing from continuously executing the code within `draw()`. If `loop()` is called, the code in `draw()` begin to run continuously again. If using `noLoop()` in `setup()`, it should be the last line inside the block.

When `noLoop()` is used, it's not possible to manipulate or access the screen inside event handling functions such as `mousePressed()` or `keyPressed()`. Instead, use those functions to call `loop()`, which will run `draw()`, which can update the screen properly. This means that when `noLoop()` has been called, no drawing can happen.

## Examples

```dart
void setup() {
  size(200, 200);
  noLoop();
}

void draw() {
  line(10, 10, 190, 190);
}
```

```dart
void setup() {
  size(200, 200);
}

float x = 0.0;

void draw() {
  background(204);
  x = x + 0.1;
  if (x > width) {
    x = 0;
  }
  line(x, 0, x, height);
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}
```

```dart
boolean someMode = false;

void setup() {
  noLoop();
}

void draw() {
  if (someMode) {
    // do something
  }
}

void mousePressed() {
  someMode = true;
  redraw();  // or loop()
}
```
