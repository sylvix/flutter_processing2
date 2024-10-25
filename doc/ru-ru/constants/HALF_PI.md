# `HALF_PI`

```dart
double HALF_PI
```

`HALF_PI` - математическая константа со значением `1.5707964`. Она равна половине отношения окружности круга к его диаметру. Применяется в сочетании с тригонометрическими функциями `sin()` и `cos()`.

## Пример

```dart
float x = width / 2;
float y = height / 2;
float d = width * 0.8;
size(400, 400);

arc(x, y, d, d, 0, QUARTER_PI); 
arc(x, y, d - 80, d - 80, 0, HALF_PI); 
arc(x, y, d - 160, d - 160, 0, PI); 
arc(x, y, d - 240, d - 240, 0, TWO_PI); 
```

## Output

<img src="./_images/half_pi_1.png" width="400" height="400" />
