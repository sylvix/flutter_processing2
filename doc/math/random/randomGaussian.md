# `randomGaussian()`

```dart
double randomGaussian([num mean = 0, num standardDeviation = 1])
```

Returns a double from a random series of numbers having a mean of 0 and standard deviation of 1. Each time the `randomGaussian()` function is called, it returns a number fitting a Gaussian, or normal, distribution. There is theoretically no minimum or maximum value that `randomGaussian()` might return. Rather, there is just a very low probability that values far from the mean will be returned; and a higher probability that numbers near the mean will be returned.

By default, the `mean` is `0`, and the `standardDeviation` is `1`.
