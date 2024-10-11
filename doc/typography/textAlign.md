# `textAlign()`

```dart
void textAlign(String horizontalAlignment, [String? verticalAlignment])
```

Sets the current alignment for drawing text. The parameters `LEFT`, `CENTER`, and `RIGHT` set the display characteristics of the letters in relation to the values for the x and y parameters of the `text()` function.

An optional second parameter can be used to vertically align the text. `BASELINE` is the default, and the vertical alignment will be reset to `BASELINE` if the second parameter is not used. The `TOP` and `CENTER` parameters are straightforward. The `BOTTOM` parameter offsets the line based on the current `textDescent()`. For multiple lines, the final line will be aligned to the bottom, with the previous lines appearing above it.

The vertical alignment is based on the value of `textAscent()`, which many fonts do not specify correctly. It may be necessary to use a hack and offset by a few pixels by hand so that the offset looks correct. To do this as less of a hack, use some percentage of `textAscent()` or `textDescent()` so that the hack works even if you change the size of the font.
