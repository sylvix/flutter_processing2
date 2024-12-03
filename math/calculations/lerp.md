# `lerp()`

```dart
double lerp(num start, num end, double percent)
```

Calculates a number between two numbers at a specific increment. 
The percent parameter is the amount to interpolate between the two values where 0.0 equal to the first point, 0.1 is very near the first point, 0.5 is half-way in between, etc.
The `lerp` function is convenient for creating motion along a straight path and for drawing dotted lines.

## Example

```dart
@override
void draw() {
    int x1 = 60;
    int y1 = 40;
    int x2 = 320;
    int y2 = 360;
    line(x1, y1, x2, y2);
    for (int i = 0; i <= 40; i++) {
        var x = lerp(x1, x2, i / 40) + 40;
        var y = lerp(y1, y2, i / 40);
        point(x, y);
    }
}
```

## Result

<img src="./_images/lerp_1.png" width="400" height="400" alt="LERP example 1" />