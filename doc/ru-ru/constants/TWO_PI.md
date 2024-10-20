# `TWO_PI`

```dart
double TWO_PI
```

`TWO_PI` - математическая константа со значением `6.2831855`.
Она в два раза больше отношения окружности круга к его диаметру.Применяется в сочетании с тригонометрическими функциями sin() и cos().

## Пример

```dart
float x = width / 2;
float y = height / 2;
float d = width * 0.8;

size(400, 400);

// Drawing arcs using TWO_PI
arc(x, y, d, d, 0, QUARTER_PI);   // Quarter circle
arc(x, y, d - 80, d - 80, 0, HALF_PI); // Half circle
arc(x, y, d - 160, d - 160, 0, PI); // Full semicircle
arc(x, y, d - 240, d - 240, 0, TWO_PI); // Complete circle
```

## Output

<img src="/_images/pi_1.png" width="400" height="400" />
