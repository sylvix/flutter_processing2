# `text()`

```dart
void text(String text, num x, num y)
```

Draws text to the screen. Displays the information specified in the first parameter on the screen in the position specified by the additional parameters. A default font will be used unless a font is set with the `textFont()` function and a default size will be used unless a font is set with `textSize()`. Change the color of the text with the `fill()` function. The text displays in relation to the `textAlign()` function, which gives the option to draw to the left, right, and center of the coordinates.

## Example 1

```dart
size(400, 400);
textSize(128);
text("word", 40, 120);
fill(0, 408, 612);
text("word", 40, 240);
fill(0, 408, 612, 204);
text("word", 40, 360);
```

## Output 1

<img src="/_images/text_1.png" width="400" height="400" />

<hr>

## Example 2

```dart
size(400, 400, P3D);
textSize(128);
fill(0, 408, 612, 816);
text("word", 48, 180, -120);  // Specify a z-axis value
text("word", 48, 240);  // Default depth, no z-value specified
```

## Output 2

<img src="/_images/text_2.png" width="400" height="400" />

<hr>

## Example 3

```dart
size(400, 400);
String s = "The quick brown fox jumps over the lazy dog.";
fill(200);
text(s, 40, 40, 280, 320);  // Text wraps within text box
```

## Output 3

<img src="/_images/text_3.png" width="400" height="400" />
