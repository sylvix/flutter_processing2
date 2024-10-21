# `textSize()`

```dart
void textSize(num fontSize)
```

Устанавливает текущий размер шрифта. Этот размер будет использоваться во всех последующих вызовах функции `text()`. Размер шрифта измеряется в пикселях.

## Пример

```dart
size(400, 400);
background(0);
fill(255);
textSize(104);
text("WORD", 40, 200);
textSize(56);
text("WORD", 40, 280);
```

## Результат

<img src="/_images/textSize_1.png" width="400" height="400" />
