# Flutter Processing

A Flutter port of [Processing](https://processing.org/reference/).

This project is not affiliated with the Processing project, or related organizations.

The goal of `flutter_processing2` is to provide the same easy learning environment as **Processing**, but with the additional utility of a production-ready UI toolkit, called **Flutter**.

# Note from the fork author of Flutter Processing 2

This is the fork of original `flutter_processing` project, but with the goal to have all the APIs changed according to the original **Processing** APIs where possible.

Some improvements and changes were also made (for example to support Retina displays).

Link to the original project:

https://github.com/matthew-carroll/flutter_processing

# How to start?

Install the library for your Flutter project:

```bash
pub get flutter_processing2
```

Or you can find the starting template here:

https://github.com/sylvix/sketch_app

# Reference

## Environment
| Feature | Description |
|---|---|
| [`frameCount`](environment/frameCount.md) | The property that contains the number of frames displayed since the program started |
| [`frameRate`](environment/frameRate.md) | |
| [`set frameRate`](environment/set_frameRate.md) | |
| [`width`](environment/width.md) | |
| [`height`](environment/height.md) | |
| [`size()`](environment/size.md) | |
| [`fullScreen()`](environment/fullScreen.md) | |

## Color
### Setting
| Feature | Description |
|---|---|
| [`background()`](color/setting/background.md) | |
| [`fill()`](color/setting/fill.md) | |
| [`noFill()`](color/setting/noFill.md) | |
| [`stroke()`](color/setting/stroke.md) | |
| [`noStroke()`](color/setting/noStroke.md) | |
| [`clear()`](color/setting/clear.md) | |

## Shape
### Attributes
| Feature | Description |
|---|---|
| [`strokeWeight()`](shape/attributes/strokeWeight.md) | |
| [`ellipseMode()`](shape/attributes/ellipseMode.md) | |
| [`rectMode()`](shape/attributes/rectMode.md) | |
### 2D Primitives
| Feature | Description |
|---|---|
| [`point()`](shape/two_d_primitives/point.md) | |
| [`line()`](shape/two_d_primitives/line.md) | |
| [`circle()`](shape/two_d_primitives/circle.md) | |
| [`ellipse()`](shape/two_d_primitives/ellipse.md) | |
| [`arc()`](shape/two_d_primitives/arc.md) | |
| [`square()`](shape/two_d_primitives/square.md) | |
| [`rect()`](shape/two_d_primitives/rect.md) | |
| [`triangle()`](shape/two_d_primitives/triangle.md) | |
| [`quad()`](shape/two_d_primitives/quad.md) | |

## Input
### Mouse
| Feature | Description |
|---|---|
| [`mouseX`](input/mouse/mouseX.md) | |
| [`mouseY`](input/mouse/mouseY.md) | |
| [`pmouseX`](input/mouse/pmouseX.md) | |
| [`pmouseY`](input/mouse/pmouseY.md) | |
| [`mouseButton`](input/mouse/mouseButton.md) | |
| [`isMousePressed`](input/mouse/isMousePressed.md) | |
| [`mousePressed()`](input/mouse/mousePressed.md) | |
| [`mouseDragged()`](input/mouse/mouseDragged.md) | |
| [`mouseReleased()`](input/mouse/mouseReleased.md) | |
| [`mouseClicked()`](input/mouse/mouseClicked.md) | |
| [`mouseMoved()`](input/mouse/mouseMoved.md) | |
| [`mouseWheel()`](input/mouse/mouseWheel.md) | |

## Math
### Random
| Feature | Description |
|---|---|
| [`randomSeed()`](math/random/randomSeed.md) | |
| [`random()`](math/random/random.md) | |
| [`noiseSeed()`](math/random/noiseSeed.md) | |
| [`noiseDetail()`](math/random/noiseDetail.md) | |
| [`noise()`](math/random/noise.md) | |
| [`randomGaussian()`](math/random/randomGaussian.md) | |

## Constants
| Feature | Description |
|---|---|
| [`HALF_PI`](constants/HALF_PI.md) | |
| [`PI`](constants/PI.md) | |
| [`QUARTER_PI`](constants/QUARTER_PI.md) | |
| [`TAU`](constants/TAU.md) | |
| [`TWO_PI`](constants/TWO_PI.md) | |

## Structure
| Feature | Description |
|---|---|
| [`setup()`](structure/setup.md) | |
| [`draw()`](structure/draw.md) | |
| [`loop()`](structure/loop.md) | |
| [`noLoop()`](structure/noLoop.md) | |

## Typography
| Feature | Description |
|---|---|
| [`text`](typography/text.md) | |
| [`textAlign`](typography/textAlign.md) | |
| [`textAscent`](typography/textAscent.md) | |
| [`textDescent`](typography/textDescent.md) | |
| [`textFont`](typography/textFont.md) | |
| [`textLeading`](typography/textLeading.md) | |
| [`textSize`](typography/textSize.md) | |
| [`textWidth`](typography/textWidth.md) | |
