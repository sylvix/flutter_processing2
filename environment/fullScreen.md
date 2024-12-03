# `fullScreen()`

```dart
void fullScreen()
```

Opens a sketch using the full size of the available area.
This function must be the first line in `setup()`. The `size()` and `fullScreen()`
functions cannot both be used in the same program, just choose one.

## Examples

```dart
int x = 0;

void setup() {
  fullScreen();
  background(0);
  noStroke();
  fill(102);
}

void draw() {
  rect(x, height*0.2, 1, height*0.6);
  x = x + 2;
}
```
