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

| Feature                                         | Description                                                                         |
| ----------------------------------------------- | ----------------------------------------------------------------------------------- |
| [`frameCount`](environment/frameCount.md)       | The property that contains the number of frames displayed since the program started |
| [`frameRate`](environment/frameRate.md)         | The contains the approximate frame rate of the software as it executes              |
| [`set frameRate`](environment/set_frameRate.md) | Specifies the number of frames to be displayed every second                         |
| [`width`](environment/width.md)                 | Variable which stores the width of the display window                               |
| [`height`](environment/height.md)               | Variable which stores the height of the display window                              |
| [`size()`](environment/size.md)                 | Defines the dimension of the display window in units of pixels                      |
| [`fullScreen()`](environment/fullScreen.md)     | Opens a sketch using the full size of the computer's display                        |

## Color

### Setting

| Feature                                       | Description                                                     |
| --------------------------------------------- | --------------------------------------------------------------- |
| [`background()`](color/setting/background.md) | Sets the color used for the background of the Processing window |
| [`fill()`](color/setting/fill.md)             | Sets the color used to fill shapes                              |
| [`noFill()`](color/setting/noFill.md)         | Disables filling geometry                                       |
| [`stroke()`](color/setting/stroke.md)         | Sets the color used to draw lines and borders around shapes     |
| [`noStroke()`](color/setting/noStroke.md)     | Disables drawing the stroke (outline)                           |
| [`clear()`](color/setting/clear.md)           | Clears the pixels within a buffer                               |

## Shape

### Attributes

| Feature                                              | Description                                                                       |
| ---------------------------------------------------- | --------------------------------------------------------------------------------- |
| [`strokeWeight()`](shape/attributes/strokeWeight.md) | Sets the width of the stroke used for lines, points, and the border around shapes |
| [`ellipseMode()`](shape/attributes/ellipseMode.md)   | The origin of the ellipse is modified by the ellipseMode() function               |
| [`rectMode()`](shape/attributes/rectMode.md)         | Modifies the location from which rectangles draw                                  |

### 2D Primitives

| Feature                                            | Description                                                        |
| -------------------------------------------------- | ------------------------------------------------------------------ |
| [`point()`](shape/two_d_primitives/point.md)       | Draws a point, a coordinate in space at the dimension of one pixel |
| [`line()`](shape/two_d_primitives/line.md)         | Draws a line (a direct path between two points) to the screen      |
| [`circle()`](shape/two_d_primitives/circle.md)     | Draws a circle to the screen                                       |
| [`ellipse()`](shape/two_d_primitives/ellipse.md)   | Draws an ellipse (oval) in the display window                      |
| [`arc()`](shape/two_d_primitives/arc.md)           | Draws an arc in the display window                                 |
| [`square()`](shape/two_d_primitives/square.md)     | Draws a square to the screen                                       |
| [`rect()`](shape/two_d_primitives/rect.md)         | Draws a rectangle to the screen                                    |
| [`triangle()`](shape/two_d_primitives/triangle.md) | A triangle is a plane created by connecting three points           |
| [`quad()`](shape/two_d_primitives/quad.md)         | A quad is a quadrilateral, a four sided polygon                    |

## Input

### Mouse

| Feature                                           | Description                                                                                                       |
| ------------------------------------------------- | ----------------------------------------------------------------------------------------------------------------- |
| [`mouseX`](input/mouse/mouseX.md)                 | The property that always contains the current horizontal coordinate of the mouse                                  |
| [`mouseY`](input/mouse/mouseY.md)                 | The property that always contains the current vertical coordinate of the mouse                                    |
| [`pmouseX`](input/mouse/pmouseX.md)               | The property that always contains the horizontal position of the mouse in the frame previous to the current frame |
| [`pmouseY`](input/mouse/pmouseY.md)               | The property that always contains the vertical position of the mouse in the frame previous to the current frame   |
| [`mouseButton`](input/mouse/mouseButton.md)       | Shows which mouse button is pressed                                                                               |
| [`isMousePressed`](input/mouse/isMousePressed.md) | Variable storing if a mouse button is pressed                                                                     |
| [`mousePressed()`](input/mouse/mousePressed.md)   | Called once after every time a mouse button is pressed                                                            |
| [`mouseDragged()`](input/mouse/mouseDragged.md)   | Called once every time the mouse moves and a mouse button is pressed                                              |
| [`mouseReleased()`](input/mouse/mouseReleased.md) | Called every time a mouse button is released                                                                      |
| [`mouseClicked()`](input/mouse/mouseClicked.md)   | Called once after a mouse button has been pressed and then released                                               |
| [`mouseMoved()`](input/mouse/mouseMoved.md)       | Called every time the mouse moves and a mouse button is not pressed                                               |
| [`mouseWheel()`](input/mouse/mouseWheel.md)       | The code within the mouseWheel() event function is run when the mouse wheel is moved                              |

## Math

### Random

| Feature                                             | Description                                                                                    |
| --------------------------------------------------- | ---------------------------------------------------------------------------------------------- |
| [`randomSeed()`](math/random/randomSeed.md)         | Sets the seed value for random()                                                               |
| [`random()`](math/random/random.md)                 | Generates random numbers                                                                       |
| [`noiseSeed()`](math/random/noiseSeed.md)           | Sets the seed value for noise()                                                                |
| [`noiseDetail()`](math/random/noiseDetail.md)       | Adjusts the character and level of detail produced by the Perlin noise function                |
| [`noise()`](math/random/noise.md)                   | Returns the Perlin noise value at specified coordinates                                        |
| [`randomGaussian()`](math/random/randomGaussian.md) | Returns a float from a random series of numbers having a mean of 0 and standard deviation of 1 |

## Constants

| Feature                                 | Description                                                              |
| --------------------------------------- | ------------------------------------------------------------------------ |
| [`HALF_PI`](constants/HALF_PI.md)       | HALF_PI is a mathematical constant with the value 1.57079632679489661923 |
| [`PI`](constants/PI.md)                 | PI is a mathematical constant with the value 3.14159265358979323846      |
| [`QUARTER_PI`](constants/QUARTER_PI.md) | QUARTER_PI is a mathematical constant with the value 0.7853982           |
| [`TAU`](constants/TAU.md)               | An alias for TWO_PI                                                      |
| [`TWO_PI`](constants/TWO_PI.md)         | TWO_PI is a mathematical constant with the value 6.28318530717958647693  |

## Structure

| Feature                           | Description                                                                                                                                             |
| --------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------- |
| [`setup()`](structure/setup.md)   | The setup() function is called once when the program starts                                                                                             |
| [`draw()`](structure/draw.md)     | Called directly after setup() and continuously executes the lines of code contained inside its block until the program is stopped or noLoop() is called |
| [`loop()`](structure/loop.md)     | Causes Processing to continuously execute the code within draw()                                                                                        |
| [`noLoop()`](structure/noLoop.md) | Stops Processing from continuously executing the code within draw()                                                                                     |

## Typography

| Feature                                      | Description                                                       |
| -------------------------------------------- | ----------------------------------------------------------------- |
| [`text()`](typography/text.md)               | Draws text to the screen                                          |
| [`textAlign()`](typography/textAlign.md)     | Sets the current alignment for drawing text                       |
| [`textAscent()`](typography/textAscent.md)   | Returns ascent of the current font at its current size            |
| [`textDescent()`](typography/textDescent.md) | Returns descent of the current font at its current size           |
| [`textFont()`](typography/textFont.md)       | Sets the current font that will be drawn with the text() function |
| [`textLeading()`](typography/textLeading.md) | Sets the spacing between lines of text in units of pixels         |
| [`textSize()`](typography/textSize.md)       | Sets the current font size                                        |
| [`textWidth()`](typography/textWidth.md)     | Calculates and returns the width of any character or text string  |
