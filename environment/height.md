# `height`

```dart
int height
```

Property which stores the height of the display window.
This value is set by the second parameter of the `size()` function.
For example, the function call `size(320, 240)` sets the height variable to the value 240.
The value of height defaults to 100 if `size()` is not used in a program.

## Examples

```dart
size(400, 400);
noStroke();
background(0);
rect(0, 160, width, 80);
rect(0, 240, width/2, 80);
```

## Output

<img src="/_images/height_1.png" width="400" height="400" />
