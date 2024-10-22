# `QUARTER_PI`

```dart
double QUARTER_PI
```

`QUARTER_PI` is a mathematical constant with the value `0.7853982`. It is one quarter the ratio of the circumference of a circle to its diameter. It is useful in combination with the trigonometric functions `sin()` and `cos()`.

## Examples

```dart
float x = width/2;
float y = height/2;
float d = width * 0.8;
size(400,400);
arc(x, y, d, d, 0, QUARTER_PI);
arc(x, y, d-80, d-80, 0, HALF_PI);
arc(x, y, d-160, d-160, 0, PI);
arc(x, y, d-240, d-240, 0, TWO_PI);
```

## Output

<img src="/_images/pi_1.png" width="400" height="400" />
