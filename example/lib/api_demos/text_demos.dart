import 'package:flutter/material.dart' hide Image, TextAlignVertical;
import 'package:flutter_processing/flutter_processing.dart';
import 'package:flutter_processing_example/_processing_demo_sketch_display.dart';

class TextSketchDemo extends StatefulWidget {
  const TextSketchDemo({
    Key? key,
    required this.sketchDemoController,
  }) : super(key: key);

  final SketchDemoController sketchDemoController;

  @override
  _TextSketchDemoState createState() => _TextSketchDemoState();
}

class _TextSketchDemoState extends State<TextSketchDemo> {
  @override
  Widget build(BuildContext context) {
    return ProcessingDemo(
      createSketch: createSketch,
      sketchDemoController: widget.sketchDemoController,
    );
  }

  Sketch createSketch() {
    return Sketch.simple(
      setup: (s) async {
        s
          ..size(400, 400)
          ..background(0)
          ..stroke(255)
          ..fill(255)
          ..textSize(44)
          ..textAlign(TextAlignHorizontal.center, TextAlignVertical.bottom)
          ..line(0, 120, s.width, 120)
          ..text("CENTER,BOTTOM", 200, 120)
          ..textAlign(TextAlignHorizontal.center, TextAlignVertical.center)
          ..line(0, 200, s.width, 200)
          ..text("CENTER,CENTER", 200, 200)
          ..textAlign(TextAlignHorizontal.center, TextAlignVertical.top)
          ..line(0, 280, s.width, 280)
          ..text("CENTER,TOP", 200, 280);
      },
    );
  }
}

class TextLeadingSketchDemo extends StatefulWidget {
  const TextLeadingSketchDemo({
    Key? key,
    required this.sketchDemoController,
  }) : super(key: key);

  final SketchDemoController sketchDemoController;

  @override
  _TextLeadingSketchDemoState createState() => _TextLeadingSketchDemoState();
}

class _TextLeadingSketchDemoState extends State<TextLeadingSketchDemo> {
  @override
  Widget build(BuildContext context) {
    return ProcessingDemo(
      createSketch: createSketch,
      sketchDemoController: widget.sketchDemoController,
    );
  }

  Sketch createSketch() {
    return Sketch.simple(
      setup: (s) async {
        s
          ..size(400, 400)
          ..stroke(0)
          ..line(0, 100, s.width, 100)
          ..fill(0)
          ..textSize(48)
          ..textLeading(40)
          ..text("L1\nL2\nL3", 40, 100)
          ..textLeading(80)
          ..text("L1\nL2\nL3", 160, 100)
          ..textLeading(120)
          ..text("L1\nL2\nL3", 280, 100);
      },
    );
  }
}

class TextWidthSketchDemo extends StatefulWidget {
  const TextWidthSketchDemo({
    Key? key,
    required this.sketchDemoController,
  }) : super(key: key);

  final SketchDemoController sketchDemoController;

  @override
  _TextWidthSketchDemoState createState() => _TextWidthSketchDemoState();
}

class _TextWidthSketchDemoState extends State<TextWidthSketchDemo> {
  @override
  Widget build(BuildContext context) {
    return ProcessingDemo(
      createSketch: createSketch,
      sketchDemoController: widget.sketchDemoController,
    );
  }

  Sketch createSketch() {
    return Sketch.simple(
      setup: (s) async {
        s
          ..size(400, 400)
          ..textSize(112)
          ..textAlign(TextAlignHorizontal.left, TextAlignVertical.bottom)
          ..text("T", 0, 160)
          ..line(s.textWidth("T"), 0, s.textWidth("T"), 200)
          ..textAlign(TextAlignHorizontal.left, TextAlignVertical.top)
          ..text("Tokyo", 0, 240)
          ..line(s.textWidth("Tokyo"), 200, s.textWidth("Tokyo"), 400);
      },
    );
  }
}

class TextAscentSketchDemo extends StatefulWidget {
  const TextAscentSketchDemo({
    Key? key,
    required this.sketchDemoController,
  }) : super(key: key);

  final SketchDemoController sketchDemoController;

  @override
  _TextAscentSketchDemoState createState() => _TextAscentSketchDemoState();
}

class _TextAscentSketchDemoState extends State<TextAscentSketchDemo> {
  @override
  Widget build(BuildContext context) {
    return ProcessingDemo(
      createSketch: createSketch,
      sketchDemoController: widget.sketchDemoController,
    );
  }

  Sketch createSketch() {
    return Sketch.simple(
      setup: (s) async {
        s
          ..size(400, 400)
          ..textAlign(TextAlignHorizontal.left, TextAlignVertical.baseline);

        final baseline = s.height * 0.75;
        const scalar = 0.8;

        // Draw smaller text
        s.textSize(128);
        final a = s.textAscent() * scalar;
        s
          ..line(0, baseline - a, s.width, baseline - a)
          ..text("dp", 0, baseline);

        // Draw larger text
        s.textSize(256);
        final a2 = s.textAscent() * scalar;
        s
          ..line(160, baseline - a2, s.width, baseline - a2)
          ..text("dp", 160, baseline);
      },
    );
  }
}

class TextDescentSketchDemo extends StatefulWidget {
  const TextDescentSketchDemo({
    Key? key,
    required this.sketchDemoController,
  }) : super(key: key);

  final SketchDemoController sketchDemoController;

  @override
  _TextDescentSketchDemoState createState() => _TextDescentSketchDemoState();
}

class _TextDescentSketchDemoState extends State<TextDescentSketchDemo> {
  @override
  Widget build(BuildContext context) {
    return ProcessingDemo(
      createSketch: createSketch,
      sketchDemoController: widget.sketchDemoController,
    );
  }

  Sketch createSketch() {
    return Sketch.simple(
      setup: (s) async {
        s
          ..size(400, 400)
          ..textAlign(TextAlignHorizontal.left, TextAlignVertical.baseline);

        final baseline = s.height * 0.75;
        const scalar = 0.8;

        // Draw smaller text
        s.textSize(128);
        final d = s.textDescent() * scalar;
        s
          ..line(0, baseline + d, s.width, baseline + d)
          ..text("dp", 0, baseline);

        // Draw larger text
        s.textSize(256);
        final d2 = s.textDescent() * scalar;
        s
          ..line(160, baseline + d2, s.width.toDouble(), baseline + d2)
          ..text("dp", 160, baseline);
      },
    );
  }
}
