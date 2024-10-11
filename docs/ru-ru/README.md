# Flutter Processing

Порт библиотеки [Processing](ru-ru/https://processing.org/reference/) для Flutter.

Этот проект не связан с проектом **Processing** или с какими-либо связанными организациями.

Цель `flutter_processing2` — предоставить такую же простую учебную среду, как **Processing**, но с дополнительной возможностью использования готового UI-инструментария под названием **Flutter**.

# Замечание от автора форка Flutter Processing

Это форк оригинального проекта `flutter_processing`, но с целью изменить все API в соответствии с оригинальными API **Processing**, где это возможно.

Также были внесены некоторые улучшения и изменения (например, для поддержки Retina-дисплеев).

Ссылка на оригинальный проект:

https://github.com/matthew-carroll/flutter_processing

# Как начать?

Установите библиотеку для вашего Flutter проекта:

```bash
pub get flutter_processing2
```

Или вы можете найти стартовый шаблон здесь:

https://github.com/sylvix/sketch_app

# Справочник

## Окружение
| Feature | Description |
|---|---|
| [`frameCount`](ru-ru/environment/frameCount.md) | Свойство, которое содержит количество кадров, отображённых с момента запуска программы |
| [`frameRate`](ru-ru/environment/frameRate.md) | |
| [`set frameRate`](ru-ru/environment/set_frameRate.md) | |
| [`width`](ru-ru/environment/width.md) | |
| [`height`](ru-ru/environment/height.md) | |
| [`size()`](ru-ru/environment/size.md) | |
| [`fullScreen()`](ru-ru/environment/fullScreen.md) | |

## Цвет
### Настройка
| Feature | Description |
|---|---|
| [`background()`](ru-ru/color/setting/background.md) | |
| [`fill()`](ru-ru/color/setting/fill.md) | |
| [`noFill()`](ru-ru/color/setting/noFill.md) | |
| [`stroke()`](ru-ru/color/setting/stroke.md) | |
| [`noStroke()`](ru-ru/color/setting/noStroke.md) | |
| [`clear()`](ru-ru/color/setting/clear.md) | |

## Фигура
### Атрибуты
| Feature | Description |
|---|---|
| [`strokeWeight()`](ru-ru/shape/attributes/strokeWeight.md) | |
| [`ellipseMode()`](ru-ru/shape/attributes/ellipseMode.md) | |
| [`rectMode()`](ru-ru/shape/attributes/rectMode.md) | |
### 2D Примитивы
| Feature | Description |
|---|---|
| [`point()`](ru-ru/shape/two_d_primitives/point.md) | |
| [`line()`](ru-ru/shape/two_d_primitives/line.md) | |
| [`circle()`](ru-ru/shape/two_d_primitives/circle.md) | |
| [`ellipse()`](ru-ru/shape/two_d_primitives/ellipse.md) | |
| [`arc()`](ru-ru/shape/two_d_primitives/arc.md) | |
| [`square()`](ru-ru/shape/two_d_primitives/square.md) | |
| [`rect()`](ru-ru/shape/two_d_primitives/rect.md) | |
| [`triangle()`](ru-ru/shape/two_d_primitives/triangle.md) | |
| [`quad()`](ru-ru/shape/two_d_primitives/quad.md) | |

## Ввод
### Мышь
| Feature | Description |
|---|---|
| [`mouseX`](ru-ru/input/mouse/mouseX.md) | |
| [`mouseY`](ru-ru/input/mouse/mouseY.md) | |
| [`pmouseX`](ru-ru/input/mouse/pmouseX.md) | |
| [`pmouseY`](ru-ru/input/mouse/pmouseY.md) | |
| [`mouseButton`](ru-ru/input/mouse/mouseButton.md) | |
| [`isMousePressed`](ru-ru/input/mouse/isMousePressed.md) | |
| [`mousePressed()`](ru-ru/input/mouse/mousePressed.md) | |
| [`mouseDragged()`](ru-ru/input/mouse/mouseDragged.md) | |
| [`mouseReleased()`](ru-ru/input/mouse/mouseReleased.md) | |
| [`mouseClicked()`](ru-ru/input/mouse/mouseClicked.md) | |
| [`mouseMoved()`](ru-ru/input/mouse/mouseMoved.md) | |
| [`mouseWheel()`](ru-ru/input/mouse/mouseWheel.md) | |

## Математика
### Случайность
| Feature | Description |
|---|---|
| [`randomSeed()`](ru-ru/math/random/randomSeed.md) | |
| [`random()`](ru-ru/math/random/random.md) | |
| [`noiseSeed()`](ru-ru/math/random/noiseSeed.md) | |
| [`noiseDetail()`](ru-ru/math/random/noiseDetail.md) | |
| [`noise()`](ru-ru/math/random/noise.md) | |
| [`randomGaussian()`](ru-ru/math/random/randomGaussian.md) | |

## Константы
| Feature | Description |
|---|---|
| [`HALF_PI`](ru-ru/constants/HALF_PI.md) | |
| [`PI`](ru-ru/constants/PI.md) | |
| [`QUARTER_PI`](ru-ru/constants/QUARTER_PI.md) | |
| [`TAU`](ru-ru/constants/TAU.md) | |
| [`TWO_PI`](ru-ru/constants/TWO_PI.md) | |

## Структура
| Feature | Description |
|---|---|
| [`setup()`](ru-ru/structure/setup.md) | |
| [`draw()`](ru-ru/structure/draw.md) | |
| [`loop()`](ru-ru/structure/loop.md) | |
| [`noLoop()`](ru-ru/structure/noLoop.md) | |

## Типографика
| Feature | Description |
|---|---|
| [`text`](ru-ru/typography/text.md) | |
| [`textAlign`](ru-ru/typography/textAlign.md) | |
| [`textAscent`](ru-ru/typography/textAscent.md) | |
| [`textDescent`](ru-ru/typography/textDescent.md) | |
| [`textFont`](ru-ru/typography/textFont.md) | |
| [`textLeading`](ru-ru/typography/textLeading.md) | |
| [`textSize`](ru-ru/typography/textSize.md) | |
| [`textWidth`](ru-ru/typography/textWidth.md) | |