# `dist()`

```dart
double dist(num x1, num y1, num x2, num y2)
```

Calculates the distance between two points.

## Examples

```dart
@override
void draw() {
  noStroke();
  var d = dist(width/2, height/2, mouseX, mouseY);
  var maxDist = dist(0, 0, width/2, height/2);
  var gray = map(d, 0, maxDist, 0, 255);
  fill(gray);
  rect(0, 0, width, height);
}
```
