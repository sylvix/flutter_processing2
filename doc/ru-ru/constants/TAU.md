# `TAU`

```dart
double TAU
```

`TAU` - математическая константа со значением `6.2831855`.
Это константа окружности, связывающая окружность круга с его линейным размером - отношением окружности круга к его радиусу.Она полезна в сочетании с тригонометрическими функциями, такими как `sin()` и `cos()`.

## Пример

```dart
float x = width / 2;
float y = height / 2;
float d = width * 0.8;

size(400, 400);

// Drawing arcs using TAU
arc(x, y, d, d, 0, QUARTER_PI);   // Quarter circle
arc(x, y, d - 20, d - 20, 0, HALF_PI); // Half circle
arc(x, y, d - 40, d - 40, 0, PI); // Full circle (180 degrees)
arc(x, y, d - 60, d - 60, 0, TAU); // Complete circle (360 degrees)
```
