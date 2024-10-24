# `randomGaussian()`

```dart
double randomGaussian([num mean = 0, num standardDeviation = 1])
```

Возвращает двойное число из случайной серии чисел со средним значением 0 и стандартным отклонением 1. При каждом вызове функции `randomGaussian()` она возвращает число, соответствующее гауссовскому, или нормальному, распределению. Теоретически не существует минимального или максимального значения, которое может вернуть `randomGaussian()`. Скорее, просто существует очень низкая вероятность того, что будут возвращены значения, далекие от среднего; и более высокая вероятность того, что будут возвращены числа, близкие к среднему.

По умолчанию `среднее значение` равно `0`, а `стандартное отклонение` равно `1`.

## Пример 1

```dart
size(400, 400);
for (int y = 0; y < 400; y++) {
    float x = randomGaussian() * 60;
    line(200, y, 200 + x, y); // Рисуем горизонтальную линию с отклонением
}

```

## Результат 1

<img src="./_images/randomGaussian_1.png" width="400" height="400" />

## Пример 2

```dart
float[] distribution = new float[360];

void setup() {
  size(400, 400);
  for (int i = 0; i < distribution.length; i++) {
    distribution[i] = int(randomGaussian() * 60);
  }
}

void draw() {
  background(204);

  translate(width / 2, width / 2); // Перемещаем начало координат в центр

  for (int i = 0; i < distribution.length; i++) {
    rotate(TWO_PI / distribution.length); // Рисуем линии под углом
    stroke(0);
    float dist = abs(distribution[i]); // Берем абсолютное значение для длины линии
    line(0, 0, dist, 0); // Рисуем линию от центра
  }
}
```

## Результат 2

<img src="./_images/randomGaussian_2.png" width="400" height="400" />
