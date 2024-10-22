# `noiseSeed()`

```dart
void noiseSeed(int? seed)
```

Sets the seed value for `noise()`. By default, `noise()` produces different results each time the program is run. Set the value parameter to a constant to return the same pseudo-random numbers each time the software is run.

To return to a natural seed value, pass `null` for `seed`.

## Examples

```dart
float xoff = 0.0;

void setup() {
  noiseSeed(0);
  stroke(0, 10);
}

void draw() {
  xoff = xoff + .01;
  float n = noise(xoff) * width;
  line(n, 0, n, height);
}
```
