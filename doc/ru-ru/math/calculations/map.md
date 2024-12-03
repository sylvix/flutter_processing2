# `map()`

```dart
num map(num value, num domainMin, num domainMax, num rangeMin, num rangeMax)
```

Преобразует число из одного диапазона в другой.
В первом примере число 25 преобразуется из диапазона от 0 до 100 в значение, соответствующее диапазону от левой границы окна (0) до правой границы (width).
Как показано во втором примере, числа, выходящие за пределы диапазона, не ограничиваются минимальными и максимальными значениями параметров, так как выход за диапазон часто бывает намеренным и полезным.

## Пример 1

```dart
@override
void setup() {
  size(200, 200);
}

@override
void draw() {
    var value = 25;
    var m = map(value, 0, 100, 0, width);
    ellipse(m, 200, 10, 10);
}
```

## Пример 2

```dart
var value = 110;
var m = map(value, 0, 100, -20, -10);
print(m); // Выводит "-9"
```

## Пример 3

```dart
@override
void setup() {
  size(200, 200);
  noStroke();
}

@override
void draw() {
  background(204);
  var x1 = map(mouseX, 0, width, 50, 150);
  ellipse(x1, 75, 50, 50);  
  var x2 = map(mouseX, 0, width, 0, 200);
  ellipse(x2, 125, 50, 50);  
}
```