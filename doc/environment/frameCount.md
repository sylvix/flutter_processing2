# `frameCount`

```dart
int frameCount
```

The system `frameCount` property contains the number of frames displayed since the program started.
Inside `setup()` the value is 0 and during the first iteration of draw it is 1, etc.

## Examples

```dart
void setup() {
  frameRate(30);
}

void draw() {
  line(0, 0, width, height);
  println(frameCount);
}
```
