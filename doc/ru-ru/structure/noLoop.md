# `noLoop()`

```dart
void noLoop()
```

Останавливает непрерывное выполнение кода в `draw()` в Processing.
Если вызвать `loop()`, код в `draw()` снова начнет выполняться непрерывно. Если вы используете `noLoop()` в `setup()`, это должна быть последняя строка внутри блока.

Когда используется `noLoop()`, невозможно манипулировать экраном или обращаться к нему внутри функций обработки событий, таких как `mousePressed()` или `keyPressed()`. Вместо этого используйте эти функции для вызова `loop()`, которая запустит `draw()`, что позволит правильно обновить экран. Это означает, что если была вызвана функция `noLoop()`, то никакого рисования произойти не может.

## Пример

```dart
void setup() {
  size(200, 200);
  noLoop();  // Остановить выполнение draw()
}

void draw() {
  line(10, 10, 190, 190);  // Нарисовать линию
}
```

```dart
void setup() {
  size(200, 200);
}

float x = 0.0;

void draw() {
  background(204);  // Очистить окно
  x = x + 0.1;  // Увеличить положение x
  if (x > width) {
    x = 0;  // Если x вышел за пределы, сбросить его
  }
  line(x, 0, x, height);  // Нарисовать вертикальную линию
}

void mousePressed() {
  noLoop();  // Остановить выполнение draw()
}

void mouseReleased() {
  loop();  // Запустить выполнение draw()
}
```

```dart
boolean someMode = false;

void setup() {
  noLoop();  // Остановить выполнение draw()
}

void draw() {
  if (someMode) {
    // Выполнить какое-то действие
  }
}

void mousePressed() {
  someMode = true;
  redraw();  // Или вызвать loop()
}
```