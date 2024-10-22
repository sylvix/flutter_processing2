# `noiseSeed()`

```dart
void noiseSeed(int? seed)
```

Устанавливает начальное значение для `noise()`. По умолчанию `noise()` выдает разные результаты при каждом запуске программы. Задайте параметр value константой, чтобы при каждом запуске программы возвращать одни и те же псевдослучайные числа.

Чтобы вернуться к естественному значению семени, передайте `null` для `seed`.

## Пример

```dart
float xoff = 0.0;

void setup() {
  noiseSeed(0);  // Установка семени для функции noise
  stroke(0, 10); // Установка цвета и прозрачности линии
}

void draw() {
  xoff = xoff + .01; // Увеличиваем смещение для создания движения
  float n = noise(xoff) * width; // Генерация значения на основе шума
  line(n, 0, n, height); // Рисуем вертикальную линию с координатой n
}
```