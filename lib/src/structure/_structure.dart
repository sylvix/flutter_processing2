part of '../_core.dart';

mixin SketchStructure {
  bool _isLooping = true;
  bool get isLooping => _isLooping;

  VoidCallback? _loop;
  VoidCallback? _noLoop;

  /// By default, Processing loops through [draw()] continuously, executing the code within it.
  /// However, the [draw()] loop may be stopped by calling [noLoop()].
  /// In that case, the [draw()] loop can be resumed with [loop()].
  void loop() {
    _isLooping = true;
    _loop?.call();
  }

  /// Stops Processing from continuously executing the code within [draw()].
  /// If [loop()] is called, the code in [draw()] begin to run continuously again.
  /// If using [noLoop()] in [setup()], it should be the last line inside the block.
  ///
  /// When [noLoop()] is used, it's not possible to manipulate or access the screen
  /// inside event handling functions such as [mousePressed()] or [keyPressed()].
  /// Instead, use those functions to call [loop()], which will run [draw()],
  /// which can update the screen properly.
  /// This means that when [noLoop()] has been called, no drawing can happen.
  void noLoop() {
    _isLooping = false;
    _noLoop?.call();
  }
}
