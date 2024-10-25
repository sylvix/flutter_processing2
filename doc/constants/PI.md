# `PI`

```dart
double PI
```

`PI` is a mathematical constant with the value `3.1415927`. It is the ratio of the circumference of a circle to its diameter. It is useful in combination with the trigonometric functions `sin()` and `cos()`.

## Examples

```dart
size(400, 400);
float x = width/2;
float y = height/2;
float d = width * 0.8;
arc(x, y, d, d, 0, QUARTER_PI);
arc(x, y, d-80, d-80, 0, HALF_PI);
arc(x, y, d-160, d-160, 0, PI);
arc(x, y, d-240, d-240, 0, TWO_PI);
```

## Output

<img src="./_images/pi_1.png" width="400" height="400" />
