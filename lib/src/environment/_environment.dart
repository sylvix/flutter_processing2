part of '../_core.dart';

mixin SketchEnvironment on BaseSketch, SketchColorSetting {
  Duration _elapsedTime = Duration.zero;
  void _updateElapsedTime(Duration newElapsedTime) =>
      _elapsedTime = newElapsedTime;

  Duration? _lastDrawTime;

  int _frameCount = 0;
  int get frameCount => _frameCount;

  int _actualFrameRate = 10;
  int get frameRate => _actualFrameRate;

  Duration _desiredFrameTime = Duration(milliseconds: (1000.0 / 60).floor());
  set frameRate(int frameRate) {
    _desiredFrameTime = Duration(milliseconds: (1000.0 / frameRate).floor());
  }

  var _desiredWidth = 100;
  var _desiredHeight = 100;
  VoidCallback? _onSizeChanged;

  int get width => _desiredWidth;

  int get height => _desiredHeight;

  void _setSize(int w, int h) {
    _desiredWidth = w;
    _desiredHeight = h;
    _paintingContext.width = w;
    _paintingContext.height = h;
    _onSizeChanged?.call();
  }

  void size(int width, int height) {
    _setSize(width, height);
    _setBackgroundColor(_backgroundColor);
  }

  void fullScreen() {
    FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;
    final size = view.physicalSize / view.devicePixelRatio;
    _setSize(size.width.floor(), size.height.floor());
    _setBackgroundColor(_backgroundColor);
  }
}
