# `textLeading()`

```dart
void textLeading(num leading)
```

Sets the spacing between lines of text in units of pixels. This setting will be used in all subsequent calls to the `text()` function. Note, however, that the leading is reset by `textSize()`. For example, if the leading is set to `20` with `textLeading(20)`, then if `textSize(48)` is run at a later point, the leading will be reset to the default for the text size of `48`.

## Examples

```dart
size(400, 400);

// Text to display. The "\n" is a "new line" character
String lines = "L1\nL2\nL3";
textSize(48);
fill(0);  // Set fill to black

textLeading(40);  // Set leading to 40
text(lines, 40, 100);

textLeading(80);  // Set leading to 80
text(lines, 160, 100);

textLeading(120);  // Set leading to 120
text(lines, 280, 100);
```

## Output

<img src="/_images/textLeading_1.png" width="400" height="400" />
