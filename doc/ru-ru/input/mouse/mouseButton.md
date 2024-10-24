# `mouseButton`

```dart
MouseButton? mouseButton
```

При нажатии кнопки мыши значение свойства `mouseButton` устанавливается либо в `MouseButton.left`, либо в `MouseButton.right`, либо в `MouseButton.center`, в зависимости от того, какая кнопка была нажата. (Если ни одна кнопка не нажата, значение mouseButton может быть сброшено в `null`. По этой причине лучше сначала использовать `mousePressed`, чтобы проверить, нажата ли какая-либо кнопка, и только потом проверять значение `mouseButton`.

## Пример

```dart

void draw() {
  if (mousePressed && (mouseButton == LEFT)) {
    fill(0); // Если нажата левая кнопка, заполнить черным
  } else if (mousePressed && (mouseButton == RIGHT)) {
    fill(255); // Если нажата правая кнопка, заполнить белым
  } else {
    fill(126); // Если ни одна кнопка не нажата, заполнить серым
  }
  rect(25, 25, 50, 50); // Рисуем прямоугольник
}
```

```dart

void draw() {
  rect(25, 25, 50, 50); // Рисуем прямоугольник
}

void mousePressed() {
  if (mouseButton == LEFT) {
    fill(0); // Если нажата левая кнопка, заполнить черным
  } else if (mouseButton == RIGHT) {
    fill(255); // Если нажата правая кнопка, заполнить белым
  } else {
    fill(126); // Если ни одна кнопка не нажата, заполнить серым
  }
}
```
