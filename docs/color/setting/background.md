# `background()`

```dart
void background(num color1, [num? color2, num? color3])
```

The `background()` function sets the color used for the background of the Processing window. The default background is light gray. This function is typically used within `draw()` to clear the display window at the beginning of each frame, but it can be used inside `setup()` to set the background on the first frame of animation or if the background need only be set once.

It is not possible to use the transparency alpha parameter with background colors on the main drawing surface. 
