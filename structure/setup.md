# `setup()`

```dart
FutureOr<void> setup() async
```

The setup() function is run once, when the program starts. It's used to define initial environment properties such as screen size and to load media such as images as the program starts.

If the sketch is a different dimension than the default, the size() function or fullScreen() function must be the first line in setup().

## Examples

```dart
int x = 0;

void setup() {
  size(200, 200);
  background(0);
  noStroke();
  fill(102);
}

void draw() {
  rect(x, 10, 2, 80);
  x = x + 1;
}
```

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
