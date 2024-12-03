# `line()`

```dart
void line(num x1, num y1, num x2, num y2)
```

Draws a line (a direct path between two points) to the screen. 

To color a line, use the `stroke()` function. A line cannot be filled, therefore the `fill()` function will not affect the color of a line. Lines are drawn with a width of one pixel by default, but this can be changed with the `strokeWeight()` function.

## Examples

| Example | Result |
| ------- | ------ |
| <pre lang="dart">line(120, 80, 340, 300);</pre> | <img src="/_images/line_1.png" width="400" height="400" /> |