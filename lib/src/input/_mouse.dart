part of '../_core.dart';

mixin SketchInputMouse {
  int _mouseX = 0;

  /// The [mouseX] property always contains the current horizontal coordinate of the mouse.
  ///
  /// Note that the sketch can only track the mouse position when the pointer is over the current sketch.
  /// The default value of [mouseX] is `0`, so `0` will be returned until the mouse moves
  /// in front of the sketch. (This typically happens when a sketch is first run.)
  /// Once the mouse moves away from the sketch, [mouseX] will continue to report its most recent position.
  int get mouseX => _mouseX;

  int _mouseY = 0;

  /// The [mouseY] property always contains the current horizontal coordinate of the mouse.
  ///
  /// Note that the sketch can only track the mouse position when the pointer is over the current sketch.
  /// The default value of [mouseY] is `0`, so `0` will be returned until the mouse moves
  /// in front of the sketch. (This typically happens when a sketch is first run.)
  /// Once the mouse moves away from the sketch, [mouseY] will continue to report its most recent position.
  int get mouseY => _mouseY;

  int _pmouseX = 0;

  /// The [pmouseX] property always contains the horizontal position of the mouse in the frame previous to the current frame.
  ///
  /// You may find that [pmouseX] and [pmouseY] have different values when referenced inside of [draw()]
  /// and inside of mouse events like [mousePressed()] and [mouseMoved()]. Inside [draw()],
  /// [pmouseX] and [pmouseY] update only once per frame (once per trip through the [draw()] loop).
  /// But inside mouse events, they update each time the event is called.
  /// If these values weren't updated immediately during events, then the mouse position would be read
  /// only once per frame, resulting in slight delays and choppy interaction.
  /// If the mouse variables were always updated multiple times per frame,
  /// then something like `line(pmouseX, pmouseY, mouseX, mouseY)` inside [draw()]
  /// would have lots of gaps, because pmouseX may have changed several times in between the calls to [line()].
  ///
  /// If you want values relative to the previous frame, use [pmouseX] and [pmouseY] inside [draw()].
  /// If you want continuous response, use [pmouseX] and [pmouseY] inside the mouse event functions.
  int get pmouseX => _pmouseX;

  int _pmouseY = 0;

  /// The [pmouseY] property always contains the vertical position of the mouse in the frame previous to the current frame.
  /// More detailed information about how [pmouseY] is updated inside of [draw()]
  /// and mouse events is explained in the reference for [pmouseX].
  int get pmouseY => _pmouseY;

  void _updateMousePosition(Offset newPosition) {
    _pmouseX = _mouseX;
    _pmouseY = _mouseY;

    _mouseX = newPosition.dx.round();
    _mouseY = newPosition.dy.round();
  }

  Set<MouseButton> _pressedMouseButtons = {};

  /// The [isMousePressed] property stores whether a mouse button has been pressed.
  /// The [mouseButton] property can be used to determine which button has been pressed.
  ///
  /// Mouse and keyboard events only work when a program has [draw()].
  /// Without [draw()], the code is only run once and then stops listening for events.
  bool get isMousePressed => _pressedMouseButtons.isNotEmpty;

  MouseButton? _mouseButton;

  /// When a mouse button is pressed, the value of the [mouseButton] property is set to either
  /// [MouseButton.left], [MouseButton.right], or [MouseButton.center], depending on which button is pressed.
  /// (If no button is pressed, [mouseButton] may be reset to `null`.
  /// For that reason, it's best to use [mousePressed] first to test if any button is being pressed,
  ///  and only then test the value of [mouseButton]
  MouseButton? get mouseButton => _mouseButton;

  /// The [mousePressed()] function is called once after every time a mouse button is pressed.
  /// The [mouseButton] property can be used to determine which button has been pressed.
  ///
  /// Mouse and keyboard events only work when a program has [draw()].
  /// Without [draw()], the code is only run once and then stops listening for events.
  void mousePressed() {}

  /// The [mouseDragged()] function is called once every time the mouse moves while a mouse button is pressed.
  /// (If a button is not being pressed, [mouseMoved()] is called instead.)
  ///
  /// Mouse and keyboard events only work when a program has [draw()].
  /// Without [draw()], the code is only run once and then stops listening for events.
  void mouseDragged() {}

  /// The [mouseReleased()] function is called every time a mouse button is released.
  ///
  /// Mouse and keyboard events only work when a program has [draw()].
  /// Without [draw()], the code is only run once and then stops listening for events.
  void mouseReleased() {}

  /// The [mouseClicked()] function is called *after* a mouse button has been pressed and then released.
  ///
  /// Mouse and keyboard events only work when a program has [draw()].
  /// Without [draw()], the code is only run once and then stops listening for events.
  void mouseClicked() {}

  /// The [mouseMoved()] function is called every time the mouse moves and a mouse button is not pressed.
  /// (If a button is being pressed, [mouseDragged()] is called instead.)
  ///
  /// Mouse and keyboard events only work when a program has [draw()].
  /// Without [draw()], the code is only run once and then stops listening for events.
  void mouseMoved() {}

  /// The code within the [mouseWheel()] event function is run when the mouse wheel is moved.
  /// (Some mice don't have wheels and this function is only applicable with mice that have a wheel.)
  /// The `count` argument passed within [mouseWheel()] returns positive values when the mouse wheel
  /// is rotated down (toward the user), and negative values for the other direction
  /// (up or away from the user). On OS X with "natural" scrolling enabled, the values are opposite.
  ///
  /// Mouse and keyboard events only work when a program has [draw()].
  /// Without [draw()], the code is only run once and then stops listening for events.
  void mouseWheel(double count) {}
}
