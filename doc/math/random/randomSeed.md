# `randomSeed()`

```dart
void randomSeed(int? seed)
```

Sets the seed value for `random()`. By default, `random()` produces different results each time the program is run. Set the seed parameter to a constant to return the same pseudo-random numbers each time the software is run.

To return to a natural seed value, pass `null` for `seed`.

## Examples

```dart
randomSeed(0);
for (int i=0; i < 100; i++) {
  float r = random(0, 255);
  stroke(r);
  line(i, 0, i, 100);
}
```
