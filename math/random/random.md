# `random()`

```dart
double random(num bound1, [num? bound2])
```

Generates random numbers. Each time the `random()` function is called, it returns an unexpected value within the specified range. If only one parameter is passed to the function, it will return a double between zero and the value of the high parameter. For example, `random(5)` returns values between 0 and 5 (starting at zero, and up to, but not including, 5).

If two parameters are specified, the function will return a double with a value between the two values. For example, `random(-5, 10.2)` returns values starting at -5 and up to (but not including) 10.2. To convert a double random number to an integer, use the `toInt()` method.

## Examples

```dart
for (int i = 0; i < 100; i++) {
  float r = random(50);
  stroke(r*5);
  line(50, i, 50+r, i);
}
```

```dart
for (int i = 0; i < 100; i++) {
  float r = random(-50, 50);
  println(r);
}
```

```dart
// Get a random element from an array
String[] words = { "apple", "bear", "cat", "dog" };
int index = int(random(words.length));  // Same as int(random(4))
println(words[index]);  // Prints one of the four words
```
