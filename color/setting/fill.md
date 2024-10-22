# `fill()`

```dart
void fill(int color1, [int? color2, int? color3, int? color4])
```

Sets the color used to fill shapes. For example, if you run `fill(204, 102, 0)`, all subsequent shapes will be filled with orange. The default color space is RGB, with each value in the range from 0 to 255.

## Examples

```dart
size(400, 400);
fill(153);
rect(120, 80, 220, 220);
```

## Output

<img src="/_images/fill_1.png" width="400" height="400" />
