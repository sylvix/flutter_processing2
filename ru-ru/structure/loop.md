# `loop()`

```dart
void loop()
```

По умолчанию Processing непрерывно выполняет цикл `draw()`, выполняя находящийся в нем код.
Однако цикл `draw()` может быть остановлен вызовом `noLoop()`. В этом случае цикл `draw()` может быть возобновлен с помощью `loop()`.

## Пример

```dart
void setup() {
  size(200, 200);
  noLoop();  // Цикл draw() не будет выполняться
}

float x = 0;

void draw() {
  background(204);  // Очистить окно
  x = x + .1;  // Увеличить положение x
  if (x > width) {
    x = 0;  // Если x вышел за пределы, сбросить его
  }
  line(x, 0, x, height);  // Нарисовать вертикальную линию
}

void mousePressed() {
  loop();  // Удерживание кнопки мыши активирует выполнение
}

void mouseReleased() {
  noLoop();  // Отпускание кнопки мыши останавливает выполнение draw()
}
```