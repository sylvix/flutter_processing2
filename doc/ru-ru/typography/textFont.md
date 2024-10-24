# `textFont()`

```dart
void textFont(String fontName)
```

Устанавливает текущий шрифт, который будет отрисовываться функцией `text()`.
Для добавления новых шрифтов используйте стандартную конфигурацию Flutter в файле `pubspec.yaml`.

Шрифт, заданный через `textFont()`, будет использоваться во всех последующих вызовах функции `text()`. Если параметр size не указан, размер шрифта по умолчанию равен `24`.

## Пример

```dart
size(400, 400);
PFont mono;
// Шрифт "andalemo.ttf" должен находиться в директории "data" текущего эскиза для успешной загрузки
mono = createFont("andalemo.ttf", 128);
background(0);
textFont(mono);[textFont.md](textFont.md)
text("word", 48, 240);
```

## Результат

<img src="./_images/textFont_1.png" width="400" height="400" />
