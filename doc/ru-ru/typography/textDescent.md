# `textDescent()`

```dart
double textDescent()
```

Возвращает опускание текущего шрифта при его текущем размере.
Эта информация полезна для определения высоты шрифта ниже базовой линии.

## Пример

```dart
size(400, 400);
float base = height * 0.75;
float scalar = 0.8; // Различен для каждого шрифта

textSize(128);  // Установить начальный размер текста
float a = textDescent() * scalar;  // Рассчитать десцент
line(0, base+a, width, base+a);
text("dp", 0, base);  // Нарисовать текст на базовой линии

textSize(256);  // Увеличить размер текста
a = textDescent() * scalar;  // Пересчитать десцент
line(160, base+a, width, base+a);
text("dp", 160, base);  // Нарисовать текст на базовой линии
```

## Результат

<img src="./_images/textDescent_1.png" width="400" height="400" />
