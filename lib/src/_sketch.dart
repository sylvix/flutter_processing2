part of '_core.dart';

class Sketch extends BaseSketch
    with
        SketchColor,
        SketchColorSetting,
        SketchConstants,
        SketchDataConversion,
        SketchEnvironment,
        SketchInputKeyboard,
        SketchInputMouse,
        SketchImageLoadingAndDisplaying,
        SketchImagePixels,
        SketchInputTimeAndDate,
        SketchMathCalculations,
        SketchMathTrigonometry,
        SketchMathRandom,
        SketchOutputImage,
        SketchRendering,
        SketchShapeAttributes,
        SketchShapeTwoDPrimitives,
        SketchShapeVertex,
        SketchStructure,
        SketchTransform,
        SketchTypography {
  Sketch.simple({
    FutureOr<void> Function(Sketch)? setup,
    FutureOr<void> Function(Sketch)? draw,
    void Function(Sketch)? keyPressed,
    void Function(Sketch)? keyTyped,
    void Function(Sketch)? keyReleased,
    void Function(Sketch)? mousePressed,
    void Function(Sketch)? mouseDragged,
    void Function(Sketch)? mouseReleased,
    void Function(Sketch)? mouseClicked,
    void Function(Sketch)? mouseMoved,
    void Function(Sketch, double)? mouseWheel,
  })  : _setup = setup,
        _draw = draw,
        _keyPressed = keyPressed,
        _keyTyped = keyTyped,
        _keyReleased = keyReleased,
        _mousePressed = mousePressed,
        _mouseDragged = mouseDragged,
        _mouseReleased = mouseReleased,
        _mouseClicked = mouseClicked,
        _mouseMoved = mouseMoved,
        _mouseWheel = mouseWheel;

  Sketch();

  void dispose() {
    clearOnFrameAvailableCallbacks();
  }

  FutureOr<void> Function(Sketch)? _setup;
  FutureOr<void> Function(Sketch)? _draw;
  void Function(Sketch)? _keyPressed;
  void Function(Sketch)? _keyTyped;
  void Function(Sketch)? _keyReleased;
  void Function(Sketch)? _mousePressed;
  void Function(Sketch)? _mouseDragged;
  void Function(Sketch)? _mouseReleased;
  void Function(Sketch)? _mouseClicked;
  void Function(Sketch)? _mouseMoved;
  void Function(Sketch, double count)? _mouseWheel;

  Image? get publishedFrame => _paintingContext.publishedImage;

  final _onFrameAvailableCallbacks = <FrameCallback>{};

  void addOnFrameAvailableCallback(FrameCallback callback) {
    _onFrameAvailableCallbacks.add(callback);
  }

  void removeOnFrameAvailableCallback(FrameCallback callback) {
    _onFrameAvailableCallbacks.remove(callback);
  }

  void clearOnFrameAvailableCallbacks() {
    _onFrameAvailableCallbacks.clear();
  }

  bool _isDrawing = false;

  bool _hasDoneSetup = false;

  Future<void> _doDrawFrame(Duration elapsedTime) async {
    if (_isDrawing || (_hasDoneSetup && !_isLooping)) {
      return;
    }

    _updateElapsedTime(elapsedTime);
    if (_lastDrawTime != null &&
        (_elapsedTime - _lastDrawTime! < _desiredFrameTime)) {
      return;
    }

    _isDrawing = true;

    _paintingContext.startRecording();

    // Run Processing setup method.
    await _doSetup();

    // Run Processing draw method.
    await _onDraw();

    await _paintingContext.finishRecording();

    // Let all interested listeners know that we've produced a new frame.
    for (final callback in _onFrameAvailableCallbacks) {
      await callback(_paintingContext.publishedImage!);
    }

    _isDrawing = false;
  }

  Future<void> _doSetup() async {
    assert(_assetBundle != null);

    if (_hasDoneSetup) {
      return;
    }
    _hasDoneSetup = true;

    // By default fill the background with a light grey.
    _setBackgroundColor(_backgroundColor);

    await setup();
  }

  /// The setup() function is run once, when the program starts.
  /// It's used to define initial environment properties such as screen size and to load media such as images as the program starts.
  ///
  /// If the sketch is a different dimension than the default, the size() function or fullScreen() function must be the first line in setup().
  FutureOr<void> setup() async {
    await _setup?.call(this);
  }

  Future<void> _onDraw() async {
    await draw();

    _frameCount += 1;
    _lastDrawTime = _elapsedTime;

    final secondsFraction = _elapsedTime.inMilliseconds / 1000.0;
    _actualFrameRate = secondsFraction > 0
        ? (_frameCount / secondsFraction).round()
        : _actualFrameRate;
  }

  /// Called directly after setup(), the draw() function continuously executes the lines of code contained inside its block until the program is stopped or noLoop() is called. draw() is called automatically and should never be called explicitly. All Processing programs update the screen at the end of draw(), never earlier.
  ///
  /// To stop the code inside of draw() from running continuously, use noLoop() and loop(). If noLoop() is used to stop the code in draw() from running, loop() will cause the code inside draw() to resume running continuously.
  ///
  /// The number of times draw() executes in each second may be controlled with the frameRate() function.
  ///
  /// It is common to call background() near the beginning of the draw() loop to clear the contents of the window. Since pixels drawn to the window are cumulative, omitting background() may result in unintended results.
  ///
  /// draw() must exist if you want the code to run continuously, or to process events such as mousePressed(). Sometimes, you might have an empty draw() in your program.
  FutureOr<void> draw() async {
    await _draw?.call(this);
  }

  @override
  void keyPressed() {
    _keyPressed?.call(this);
  }

  @override
  void keyTyped() {
    _keyTyped?.call(this);
  }

  @override
  void keyReleased() {
    _keyReleased?.call(this);
  }

  @override
  void mousePressed() {
    _mousePressed?.call(this);
  }

  @override
  void mouseDragged() {
    _mouseDragged?.call(this);
  }

  @override
  void mouseReleased() {
    _mouseReleased?.call(this);
  }

  @override
  void mouseClicked() {
    _mouseClicked?.call(this);
  }

  @override
  void mouseMoved() {
    _mouseMoved?.call(this);
  }

  @override
  void mouseWheel(double count) {
    _mouseWheel?.call(this, count);
  }
}

typedef FrameCallback = FutureOr<void> Function(Image);
