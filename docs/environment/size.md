# `size()`

```dart
void size(int width, int height)
```

Defines the dimension of the display window width and height in units of pixels.
In a program that has the `setup()` function, the `size()` function must be the first line of code inside `setup()`

The built-in variables `width` and `height` are set by the parameters passed to this function.
For example, running `size(640, 480)` will assign 640 to the `width` variable and 480 to the `height` variable.

If `size()` is not used, the sketch will be given a default size of 100 x 100 pixels.

To run a sketch that fills the screen, use the `fullScreen()` function
