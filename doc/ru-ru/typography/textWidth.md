# `textWidth()`

```dart
double textWidth(String text)
```

Вычисляет и возвращает ширину любого символа или текстовой строки.

## Пример

```dart
size(400, 400);
textSize(112);

char c = 'T';
float cw = textWidth(c);
text(c, 0, 160);
line(cw, 0, cw, 200);

String s = "Tokyo";
float sw = textWidth(s);
text(s, 0, 340);
line(sw, 200, sw, 400);
```

## Результат

<img src="./_images/textWidth_1.png" width="400" height="400" />
