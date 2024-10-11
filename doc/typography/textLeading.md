# `textLeading()`

```dart
void textLeading(num leading)
```

Sets the spacing between lines of text in units of pixels. This setting will be used in all subsequent calls to the `text()` function. Note, however, that the leading is reset by `textSize()`. For example, if the leading is set to `20` with `textLeading(20)`, then if `textSize(48)` is run at a later point, the leading will be reset to the default for the text size of `48`.
