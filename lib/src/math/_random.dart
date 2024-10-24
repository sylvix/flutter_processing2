import 'dart:math';

import 'package:fast_noise/fast_noise.dart';

mixin SketchMathRandom {
  Random _random = Random();

  /// Sets the seed value for [random()].
  /// By default, [random()] produces different results each time the program is run.
  /// Set the seed parameter to a constant to return the same pseudo-random numbers each time the software is run.
  ///
  /// To return to a natural seed value, pass [null] for [seed].
  void randomSeed(int? seed) {
    _random = Random(seed);
  }

  /// Generates random numbers.
  /// Each time the [random()] function is called, it returns an unexpected value within the specified range.
  /// If only one parameter is passed to the function,
  /// it will return a double between zero and the value of the high parameter.
  /// For example, `random(5)` returns values between 0 and 5 (starting at zero, and up to, but not including, 5).
  ///
  /// If two parameters are specified, the function will return a float with a value between the two values.
  /// For example, `random(-5, 10.2)` returns values starting at -5 and up to (but not including) 10.2.
  /// To convert a floating-point random number to an integer, use the [toInt()] method.
  double random(num bound1, [num? bound2]) {
    final lowerBound = bound2 != null ? bound1 : 0;
    final upperBound = bound2 != null ? bound2 : bound1;

    if (upperBound < lowerBound) {
      throw Exception('random() lower bound must be less than upper bound');
    }

    return _random.nextDouble() * (upperBound - lowerBound) + lowerBound;
  }

  int _perlinNoiseSeed = 1337;
  int _perlinNoiseOctaves = 4;
  double _perlinNoiseFalloff = 0.5;
  PerlinFractalNoise? _perlinNoise;

  /// Sets the seed value for [noise()].
  /// By default, [noise()] produces different results each time the program is run.
  /// Set the value parameter to a constant to return the same pseudo-random numbers each time the software is run.
  ///
  /// To return to a natural seed value, pass `null` for [seed].
  void noiseSeed(int? seed) {
    _perlinNoiseSeed = seed ?? 1337;
    _initializePerlinNoise();
  }

  /// Adjusts the character and level of detail produced by the Perlin noise function. Similar to harmonics in physics, noise is computed over several octaves. Lower octaves contribute more to the output signal and as such define the overall intensity of the noise, whereas higher octaves create finer-grained details in the noise sequence.
  ///
  /// By default, noise is computed over 4 octaves with each octave contributing exactly half than its predecessor, starting at 50% strength for the first octave. This falloff amount can be changed by adding a function parameter. For example, a falloff factor of 0.75 means each octave will now have 75% impact (25% less) of the previous lower octave. While any number between 0.0 and 1.0 is valid, note that values greater than 0.5 may result in noise() returning values greater than 1.0.
  ///
  ///By changing these parameters, the signal created by the noise() function can be adapted to fit very specific needs and characteristics.
  void noiseDetail(int? octaves, double? falloff) {
    _perlinNoiseOctaves = octaves ?? 4;
    _perlinNoiseFalloff = falloff ?? 0.5;

    _initializePerlinNoise();
  }

  /// Returns the Perlin noise value at specified coordinates. Perlin noise is a random sequence generator producing a more natural, harmonic succession of numbers than that of the standard random() function. It was developed by Ken Perlin in the 1980s and has been used in graphical applications to generate procedural textures, shapes, terrains, and other seemingly organic forms.
  ///
  /// In contrast to the random() function, Perlin noise is defined in an infinite n-dimensional space, in which each pair of coordinates corresponds to a fixed semi-random value (fixed only for the lifespan of the program). The resulting value will always be between 0.0 and 1.0. Processing can compute 1D, 2D and 3D noise, depending on the number of coordinates given. The noise value can be animated by moving through the noise space, as demonstrated in the first example above. The 2nd and 3rd dimensions can also be interpreted as time.
  ///
  /// The actual noise structure is similar to that of an audio signal, in respect to the function's use of frequencies. Similar to the concept of harmonics in physics, Perlin noise is computed over several octaves which are added together for the final result.
  ///
  /// Another way to adjust the character of the resulting sequence is the scale of the input coordinates. As the function works within an infinite space, the value of the coordinates doesn't matter as such; only the distance between successive coordinates is important (such as when using noise() within a loop). As a general rule, the smaller the difference between coordinates, the smoother the resulting noise sequence. Steps of 0.005-0.03 work best for most applications, but this will differ depending on use.
  ///
  /// There have been debates over the accuracy of the implementation of noise in Processing. For clarification, it's an implementation of "classic Perlin noise" from 1983, and not the newer "simplex noise" method from 2001.
  double noise(double x, [double y = 0, z = 0]) {
    if (_perlinNoise == null) {
      _initializePerlinNoise();
    }

    return _perlinNoise!.getNoise3(x, y, z);
  }

  void _initializePerlinNoise() {
    _perlinNoise = PerlinFractalNoise(
      seed: _perlinNoiseSeed,
      octaves: _perlinNoiseOctaves,
      gain: _perlinNoiseFalloff,
    );
  }

  double? _previousGaussian;

  /// Returns a double from a random series of numbers having a mean of 0 and standard deviation of 1.
  /// Each time the [randomGaussian()] function is called, it returns a number fitting a Gaussian, or normal, distribution.
  /// There is theoretically no minimum or maximum value that [randomGaussian()] might return.
  /// Rather, there is just a very low probability that values far from the mean will be returned;
  /// and a higher probability that numbers near the mean will be returned.
  ///
  /// By default, the [mean] is `0`, and the [standardDeviation] is `1`.
  double randomGaussian([num mean = 0, num standardDeviation = 1]) {
    // The random Gaussian is calculated using the Marsaglia polar method
    // which generates TWO independent standard normal random variables,
    // so one is stored and used the next time the function is called.
    double y1, x1, x2, w;
    if (_previousGaussian != null) {
      y1 = _previousGaussian!;
      _previousGaussian = null;
    } else {
      do {
        x1 = this.random(2) - 1;
        x2 = this.random(2) - 1;
        w = x1 * x1 + x2 * x2;
      } while (w >= 1);
      w = sqrt(-2 * log(w) / w);
      y1 = x1 * w;
      _previousGaussian = x2 * w;
    }

    return y1 * standardDeviation + mean;
  }
}
