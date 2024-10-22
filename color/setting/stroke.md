# `stroke()`

```dart
void stroke(int color1, [int? color2, int? color3, int? color4])
```

Sets the color used to draw lines and borders around shapes. The default color space is RGB, with each value in the range from 0 to 255.

## Example 1

```dart
size(400, 400);
stroke(153);
rect(120, 80, 220, 220);
```

## Output 1

<img src="/_images/stroke_1.png" width="400" height="400" />

<hr>

## Example 2

```dart
size(400, 400);
stroke(204, 102, 0); // You can pass more parameters
rect(120, 80, 220, 220);
```

## Output 2

<img src="/_images/stroke_2.png" width="400" height="400" />
