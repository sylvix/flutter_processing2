# `mousePressed()`

```dart
void mousePressed()
```

The `isMousePressed` property stores information about whether a mouse button has been pressed. The `mouseButton` property can be used to determine which button was pressed.

Mouse and keyboard events work only when `draw()` is present in the program. Without `draw()`, the code is executed only once and then stops listening for events.

## Пример

```dart
// Нажмите внутри изображения, чтобы изменить
// цвет прямоугольника

int value = 0;

void draw() {
  fill(value); // Устанавливаем цвет заливки
  rect(25, 25, 50, 50); // Рисуем прямоугольник
}

void mousePressed() {
  if (value == 0) {
    value = 255; // Если цвет 0 (черный), меняем на 255 (белый)
  } else {
    value = 0; // Если цвет 255 (белый), меняем на 0 (черный)
  }
}
```
