# `textFont()`

```dart
void textFont(String fontName)
```

Sets the current font that will be drawn with the `text()` function. Use the standard Flutter configuration in `pubspec.yaml` file to add new fonts.

The font set through `textFont()` will be used in all subsequent calls to the `text()` function. If no size parameter is specified, the font size defaults to `24`.

## Examples

```dart
size(400,400);
PFont mono;
// The font "andalemo.ttf" must be located in the
// current sketch's "data" directory to load successfully
mono = createFont("andalemo.ttf", 128);
background(0);
textFont(mono);
text("word", 48, 240);
```

## Output

<img src="/_images/textFont_1.png" width="400" height="400" />
