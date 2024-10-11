# `mouseButton`

```dart
MouseButton? mouseButton
```

When a mouse button is pressed, the value of the `mouseButton` property is set to either `MouseButton.left`, `MouseButton.right`, or `MouseButton.center`, depending on which button is pressed. (If no button is pressed, mouseButton may be reset to `null`. For that reason, it's best to use `mousePressed` first to test if any button is being pressed, and only then test the value of `mouseButton`
