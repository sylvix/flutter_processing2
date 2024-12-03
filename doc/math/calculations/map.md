# `map()`

```dart
num map(num value, num domainMin, num domainMax, num rangeMin, num rangeMax)
```

Re-maps a number from one range to another.
In the first example, the number 25 is converted from a value in the range of 0 to 100 into a value that ranges from the left edge of the window (0) to the right edge (width).
As shown in the second example, numbers outside the range are not clamped to the minimum and maximum parameters values, because out-of-range values are often intentional and useful.

## Example 1

```dart
@override
void setup() {
  size(200, 200);
}

@override
void draw() {
    var value = 25;
    var m = map(value, 0, 100, 0, width);
    ellipse(m, 200, 10, 10);
}
```

## Example 2

```dart
var value = 110;
var m = map(value, 0, 100, -20, -10);
print(m); // Prints "-9"
```

## Example 3

```dart
@override
void setup() {
  size(200, 200);
  noStroke();
}

@override
void draw() {
  background(204);
  var x1 = map(mouseX, 0, width, 50, 150);
  ellipse(x1, 75, 50, 50);  
  var x2 = map(mouseX, 0, width, 0, 200);
  ellipse(x2, 125, 50, 50);  
}
```