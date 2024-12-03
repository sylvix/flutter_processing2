# `textAlign()`

```dart
void textAlign(String horizontalAlignment, [String? verticalAlignment])
```

Устанавливает текущее выравнивание для рисования текста.
Параметры `LEFT`, `CENTER` и `RIGHT` задают характеристики отображения букв по отношению к значениям параметров x и y функции `text()`.

Необязательный второй параметр может использоваться для вертикального выравнивания текста. По умолчанию используется `BASELINE`, и если второй параметр не используется, вертикальное выравнивание будет сброшено на `BASELINE`. Параметры `TOP` и `CENTER` являются простыми. Параметр `BOTTOM` смещает строку, основываясь на текущем значении `textDescent()`. Для нескольких строк последняя строка будет выровнена по низу, а предыдущие строки окажутся над ней.

Вертикальное выравнивание основано на значении `textAscent()`, которое многие шрифты указывают неправильно. Возможно, придется воспользоваться хаком и сместить на несколько пикселей вручную, чтобы смещение выглядело правильно. Чтобы сделать это менее хакерским способом, используйте некоторый процент `textAscent()` или `textDescent()`, чтобы хак работал, даже если вы измените размер шрифта.

## Пример 1

```dart
size(400, 400);
background(0);
textSize(64);
textAlign(RIGHT);
text("ABCD", 200, 120);
textAlign(CENTER);
text("EFGH", 200, 200);
textAlign(LEFT);
text("IJKL", 200, 280);
```

## Резултат 1

<img src="./_images/textAlign_1.png" width="400" height="400" />

<hr>

## Пример 2

```dart
size(400, 400);
background(0);
stroke(153);
textSize(44);
textAlign(CENTER, BOTTOM);
line(0, 120, width, 120);
text("CENTER,BOTTOM", 200, 120);
textAlign(CENTER, CENTER);
line(0, 200, width, 200);
text("CENTER,CENTER", 200, 200);
textAlign(CENTER, TOP);
line(0, 280, width, 280);
text("CENTER,TOP", 200, 280);
```

## Резултат 2

<img src="./_images/textAlign_2.png" width="400" height="400" />
