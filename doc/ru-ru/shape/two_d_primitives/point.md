# `point()`

```dart
void point(num x, num y)
```

Рисует точку - координату в пространстве размером в один пиксель.
Первый параметр - это значение горизонтали для точки, а второй - значение вертикали для точки.

Используйте `stroke()`, чтобы задать цвет точки()`.

## Пример

```dart
size(400, 400);  // Устанавливаем размер окна 400 на 400 пикселей
noSmooth();      // Отключаем сглаживание
point(120, 80);  // Рисуем точку в координатах (120, 80)
point(340, 80);  // Рисуем точку в координатах (340, 80)
point(340, 300); // Рисуем точку в координатах (340, 300)
point(120, 300); // Рисуем точку в координатах (120, 300)
```

## Результат

<img src="./_images/point_1.png" width="400" height="400" />