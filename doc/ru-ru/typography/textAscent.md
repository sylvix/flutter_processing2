# `textAscent()`

```dart
double textAscent()
```

Возвращает высоту подъема текущего шрифта при его текущем размере.
Эта информация полезна для определения высоты шрифта над базовой линией.

## Пример

```dart
size(400, 400);
float base = height * 0.75;
float scalar = 0.8; // Различен для каждого шрифта

textSize(128);  // Установить начальный размер текста
float a = textAscent() * scalar;  // Рассчитать асцендент
line(0, base-a, width, base-a);
text("dp", 0, base);  // Нарисовать текст на базовой линии

textSize(256);  // Увеличить размер текста
a = textAscent() * scalar;  // Пересчитать асцендент
line(160, base-a, width, base-a);
text("dp", 160, base);  // Нарисовать текст на базовой линии
```

## Результат

<img src="/_images/textAscent_1.png" width="400" height="400" />
