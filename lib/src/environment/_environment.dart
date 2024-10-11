part of '../_core.dart';

mixin SketchEnvironment on BaseSketch, SketchColorSetting {
  Duration _elapsedTime = Duration.zero;
  void _updateElapsedTime(Duration newElapsedTime) =>
      _elapsedTime = newElapsedTime;

  Duration? _lastDrawTime;

  int _frameCount = 0;

  /// Contains the number o frames displayed since the program started.
  /// Inside [setup()] the value is 0 and during the first iteration of draw it is 1, etc.
  int get frameCount => _frameCount;

  int _actualFrameRate = 10;

  /// Contains the approximate frame rate of the software as it executes.
  /// The initial value is 10 fps and is updated with each frame.
  /// The value is averaged (integrated) over several frames.
  /// As such, this value won't be valid until after 5-10 frames.
  int get frameRate => _actualFrameRate;

  Duration _desiredFrameTime = Duration(milliseconds: (1000.0 / 60).floor());

  /// Specifies the number of frames to be displayed every second.
  ///
  /// For example, setting this property to 30 like this: `frameRate = 30;` will attempt to refresh 30 times a second.
  ///
  /// If the processor is not fast enough to maintain the specified rate, the frame rate will not be achieved.
  /// Setting the frame rate within `setup()` is recommended. The default rate is 60 frames per second.
  set frameRate(int frameRate) {
    _desiredFrameTime = Duration(milliseconds: (1000.0 / frameRate).floor());
  }

  var _desiredWidth = 100;
  var _desiredHeight = 100;
  VoidCallback? _onSizeChanged;

  /// Property which stores the width of the displayed sketch.
  /// This value is set by the first parameter of the [size()] function.
  /// For example, the function call `size(320, 240)` sets the width variable to the value 320.
  /// The value of width defaults to 100 if [size()] is not used in a program.
  int get width => _desiredWidth;

  /// Property which stores the height of the display window.
  /// This value is set by the second parameter of the [size()] function.
  /// For example, the function call `size(320, 240)` sets the height variable to the value 240.
  /// The value of height defaults to 100 if [size()] is not used in a program.
  int get height => _desiredHeight;

  void _setSize(int w, int h) {
    _desiredWidth = w;
    _desiredHeight = h;
    _paintingContext.width = w;
    _paintingContext.height = h;
    _onSizeChanged?.call();
  }

  /// Defines the dimension of the display window width and height in units of pixels.
  /// In a program that has the [setup()] function, the [size()] function must be the first line of code inside setup()
  ///
  /// The built-in variables [width] and [height] are set by the parameters passed to this function.
  /// For example, running `size(640, 480)` will assign 640 to the [width] variable and 480 to the [height] variable.
  /// If [size()] is not used, the sketch will be given a default size of 100 x 100 pixels.
  ///
  /// To run a sketch that fills the screen, use the [fullScreen()] function
  void size(int width, int height) {
    _setSize(width, height);
    _setBackgroundColor(_backgroundColor);
  }

  /// Opens a sketch using the full size of the available area.
  /// This function must be the first line in [setup()]. The [size()] and [fullScreen()]
  /// functions cannot both be used in the same program, just choose one.
  void fullScreen() {
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
    final size = view.physicalSize;
    _setSize(size.width.floor(), size.height.floor());
    _setBackgroundColor(_backgroundColor);
  }
}
