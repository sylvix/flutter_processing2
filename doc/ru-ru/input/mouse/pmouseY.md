# `pmouseY`

```dart
int pmouseY
```

Свойство `pmouseY` всегда содержит вертикальное положение мыши в кадре, предшествующем текущему. Более подробная информация о том, как `pmouseY` обновляется внутри `draw()` и событий мыши, описана в справке для `pmouseX`.

## Пример

```dart
// Быстро перемещайте мышь, чтобы увидеть разницу
// между текущей и предыдущей позициями
void draw() {
  background(204);
  line(20, mouseY, 80, pmouseY); // Рисуем линию от текущего положения мыши до предыдущего
  println(mouseY + " : " + pmouseY); // Выводим текущее и предыдущее значения мыши в консоль
}
```