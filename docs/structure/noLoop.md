# `noLoop()`

```dart
void noLoop()
```

Stops Processing from continuously executing the code within `draw()`. If `loop()` is called, the code in `draw()` begin to run continuously again. If using `noLoop()` in `setup()`, it should be the last line inside the block.

When `noLoop()` is used, it's not possible to manipulate or access the screen inside event handling functions such as `mousePressed()` or `keyPressed()`. Instead, use those functions to call `loop()`, which will run `draw()`, which can update the screen properly. This means that when `noLoop()` has been called, no drawing can happen.
