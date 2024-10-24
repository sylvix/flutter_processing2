import 'dart:async';
import 'dart:io';
import 'dart:ui';
import 'dart:math';

import 'package:flutter/gestures.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart' hide Image, TextStyle, TextAlignVertical;
import 'package:flutter_processing2/flutter_processing2.dart';
import 'package:flutter_processing2/src/math/_random.dart';
import 'package:flutter_processing2/src/math/_trigonometry.dart';
import 'package:image/image.dart' as imageFormats;
import 'package:path/path.dart' as path;

import '_painting_context.dart';
import 'data/conversion.dart';
import 'input/_time_and_date.dart';
import 'math/_calculations.dart';

part '_processing_widget.dart';
part '_sketch.dart';
part 'constants/_constants.dart';
part 'color/_setting.dart';
part 'environment/_environment.dart';
part 'input/_keyboard.dart';
part 'input/_mouse.dart';
part 'image/_loading_and_displaying.dart';
part 'image/_pixels.dart';
part 'output/_image.dart';
part 'rendering/_rendering.dart';
part 'shape/_attributes.dart';
part 'shape/_two_d_primitives.dart';
part 'shape/_vertex.dart';
part 'structure/_structure.dart';
part 'transform/_transform.dart';
part 'typography/_typography.dart';

abstract class BaseSketch {
  SketchPaintingContext _paintingContext = SketchPaintingContext();

  AssetBundle? _assetBundle;
}
