# `ellipseMode()`

```dart
void ellipseMode(String mode)
```

Modifies the location from which ellipses are drawn by changing the way in which parameters given to `ellipse()` are interpreted.

The default mode is `ellipseMode(CENTER)`, which interprets the first two parameters of `ellipse()` as the shape's center point, while the third and fourth parameters are its width and height.

`ellipseMode(RADIUS)` also uses the first two parameters of `ellipse()` as the shape's center point, but uses the third and fourth parameters to specify half of the shape's width and height.

`ellipseMode(CORNER)` interprets the first two parameters of `ellipse()` as the upper-left corner of the shape, while the third and fourth parameters are its width and height.

`ellipseMode(CORNERS)` interprets the first two parameters of `ellipse()` as the location of one corner of the ellipse's bounding box, and the third and fourth parameters as the location of the opposite corner.
