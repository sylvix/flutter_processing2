# `quad()`

```dart
void quad(num x1, num y1, num x2, num y2, num x3, num y3, num x4, num y4)
```

A quad is a quadrilateral, a four sided polygon. It is similar to a rectangle, but the angles between its edges are not constrained to ninety degrees. The first pair of parameters (`x1`,`y1`) sets the first vertex and the subsequent pairs should proceed clockwise or counter-clockwise around the defined shape.

## Examples

```dart
size(400, 400);
quad(152, 124, 344, 80, 276, 252, 120, 304);
```

## Output

<img src="/_images/quad_1.png" width="400" height="400" />
