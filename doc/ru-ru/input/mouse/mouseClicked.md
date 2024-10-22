# `mouseClicked()`

```dart
void mouseClicked()
```

Функция `mouseClicked()` вызывается _после_ того, как кнопка мыши была нажата, а затем отпущена.

События мыши и клавиатуры работают только тогда, когда в программе есть функция `draw()`. Без `draw()` код выполняется только один раз, а затем перестает слушать события.

## Пример

```dart
// Нажмите на изображение, чтобы изменить
// значение прямоугольника после нажатия мыши

int value = 0;

void draw() {
  fill(value); // Устанавливаем цвет заливки
  rect(25, 25, 50, 50); // Рисуем прямоугольник
}

void mouseClicked() {
  if (value == 0) {
    value = 255; // Если значение 0, меняем на 255
  } else {
    value = 0; // В противном случае сбрасываем на 0
  }
}
```