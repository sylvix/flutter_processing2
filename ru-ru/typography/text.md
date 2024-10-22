# `text()`

```dart
void text(String text, num x, num y)
```

Выводит текст на экран.
Отображает информацию, указанную в первом параметре, на экране в позиции, заданной дополнительными параметрами. Используется шрифт по умолчанию, если не задан шрифт с помощью функции `textFont()`, и размер по умолчанию, если не задан шрифт с помощью `textSize()`. Измените цвет текста с помощью функции `fill()`. Текст отображается в зависимости от функции `textAlign()`, которая дает возможность рисовать слева, справа и по центру координат.

## Пример 1

```dart
size(400, 400);
textSize(128);
text("слово", 40, 120);
fill(0, 408, 612);
text("слово", 40, 240);
fill(0, 408, 612, 204);
text("слово", 40, 360);
```

## Результат 1

<img src="/_images/text_1.png" width="400" height="400" />

<hr>

## Пример 2

```dart
size(400, 400, P3D);
textSize(128);
fill(0, 408, 612, 816);
text("слово", 48, 180, -120);  // Указать значение по оси z
text("слово", 48, 240);  // Значение по умолчанию, z-значение не указано
```

## Результат 2

<img src="/_images/text_2.png" width="400" height="400" />

<hr>

## Пример 3

```dart
size(400, 400);
String s = "Лиса прыгает через ленивую собаку.";
fill(200);
text(s, 40, 40, 280, 320);  // Текст оборачивается в текстовом блоке
```

## Результат 3

<img src="/_images/text_3.png" width="400" height="400" />