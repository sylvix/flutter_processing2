# `width`

```dart
int width
```

Stores the width of the displayed sketch.
This value is set by the first parameter of the `size()` function.
For example, the function call `size(320, 240)` sets the width variable to the value 320.
The value of width defaults to 100 if `size()` is not used in a program.

## Examples

```dart
size(400, 400);
noStroke();
background(0);
rect(0, 160, width, 80);
rect(0, 240, width/2, 80);
```

## Output

<img src="/_images/width_examples_1.png" width="400" height="400" />
