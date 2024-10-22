# `clear()`

```dart
void clear()
```

Clears all the pixels within a buffer.

## Examples

```dart
void setup() {
  size(400, 400);
}

void draw() {
  clear();

  fill(random(255), random(255), random(255));
  ellipse(random(width), random(height), 50, 50);
}
```
