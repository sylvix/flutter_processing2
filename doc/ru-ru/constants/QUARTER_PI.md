# `QUARTER_PI`

```dart
double QUARTER_PI
```

`QUARTER_PI` - математическая константа со значением `0,7853982`. Она равна одной четверти отношения окружности круга к его диаметру. Применяется в сочетании с тригонометрическими функциями `sin()` и `cos()`.

## Пример

```dart
float x = width / 2;
float y = height / 2;
float d = width * 0.8;
size(400, 400);

// Рисуем дуги, используя QUARTER_PI
arc(x, y, d, d, 0, QUARTER_PI);      // Четверть круга
arc(x, y, d - 80, d - 80, 0, HALF_PI); // Полукруг
arc(x, y, d - 160, d - 160, 0, PI); // Полная окружность
arc(x, y, d - 240, d - 240, 0, TWO_PI); // Полная окружность, два Пи
```

## Output

<img src="/_images/pi_1.png" width="400" height="400" />
