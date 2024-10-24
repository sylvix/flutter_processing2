# `TAU`

```dart
double TAU
```

`TAU` is a mathematical constant with the value `6.2831855`. It is the circle constant relating the circumference of a circle to its linear dimension, the ratio of the circumference of a circle to its radius. It is useful in combination with trigonometric functions such as `sin()` and `cos()`.

## Examples

```dart
float x = width/2;
float y = height/2;
float d = width * 0.8;
arc(x, y, d, d, 0, QUARTER_PI);
arc(x, y, d-20, d-20, 0, HALF_PI);
arc(x, y, d-40, d-40, 0, PI);
arc(x, y, d-60, d-60, 0, TAU);
```
