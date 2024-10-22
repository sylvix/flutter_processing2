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
| Feature | Description                                                                            |
|---|----------------------------------------------------------------------------------------|
| [`frameCount`](ru-ru/environment/frameCount.md) | Свойство, которое содержит количество кадров, отображённых с момента запуска программы |
| [`frameRate`](ru-ru/environment/frameRate.md) | Содержит приблизительную частоту кадров при выполнении программы                       |
| [`set frameRate`](ru-ru/environment/set_frameRate.md) | Указывает количество кадров, которые будут отображаться каждую секунду                 |
| [`width`](ru-ru/environment/width.md) | Переменная, хранящая ширину окна отображения                                           |
| [`height`](ru-ru/environment/height.md) | Переменная, хранящая высоту окна отображения                                           |
| [`size()`](ru-ru/environment/size.md) | Определяет размер окна отображения в единицах пикселей                                 |
| [`fullScreen()`](ru-ru/environment/fullScreen.md) | Открытие эскиза с использованием полного размера дисплея компьютера                    |

## Цвет
### Настройка
| Feature | Description                                                                |
|---|----------------------------------------------------------------------------|
| [`background()`](ru-ru/color/setting/background.md) | Устанавливает цвет, используемый для фона окна обработки изображений       |
| [`fill()`](ru-ru/color/setting/fill.md) | Устанавливает цвет, используемый для заливки фигур                         |
| [`noFill()`](ru-ru/color/setting/noFill.md) | Отключает заполнение геометрии                                             |
| [`stroke()`](ru-ru/color/setting/stroke.md) | Устанавливает цвет, используемый для рисования линий и границ вокруг фигур |
| [`noStroke()`](ru-ru/color/setting/noStroke.md) | Отключает рисование обводки (контура).                                     |
| [`clear()`](ru-ru/color/setting/clear.md) | Очищает пиксели в буфере.                                                  |

## Фигура
### Атрибуты
| Feature | Description                                                                        |
|---|------------------------------------------------------------------------------------|
| [`strokeWeight()`](ru-ru/shape/attributes/strokeWeight.md) | Устанавливает ширину обводки, используемой для линий, точек и границ вокруг фигур. |
| [`ellipseMode()`](ru-ru/shape/attributes/ellipseMode.md) | Начало эллипса изменяется функцией ellipseMode()                                   |
| [`rectMode()`](ru-ru/shape/attributes/rectMode.md) | Изменяет местоположение, из которого рисуются прямоугольники.                      |
### 2D Примитивы
| Feature | Description                                                      |
|---|------------------------------------------------------------------|
| [`point()`](ru-ru/shape/two_d_primitives/point.md) | Рисует точку, координату в пространстве размером в один пиксель. |
| [`line()`](ru-ru/shape/two_d_primitives/line.md) |  Рисует линию (прямой путь между двумя точками) на экране                                                                |
| [`circle()`](ru-ru/shape/two_d_primitives/circle.md) |  Рисует круг на экране                                                                |
| [`ellipse()`](ru-ru/shape/two_d_primitives/ellipse.md) |  Рисует эллипс (овал) в окне дисплея                                                                |
| [`arc()`](ru-ru/shape/two_d_primitives/arc.md) |                                        Рисует дугу в окне дисплея                          |
| [`square()`](ru-ru/shape/two_d_primitives/square.md) |    Рисует квадрат на экране                                                              |
| [`rect()`](ru-ru/shape/two_d_primitives/rect.md) |      Рисует прямоугольник на экране                                                            |
| [`triangle()`](ru-ru/shape/two_d_primitives/triangle.md) |     Треугольник - это плоскость, образованная соединением трех точек                                                             |
| [`quad()`](ru-ru/shape/two_d_primitives/quad.md) | Квадрат - это четырехугольник, многоугольник с четырьмя сторонами.                                                                 |

## Ввод
### Мышь
| Feature | Description |
|---|-------------|
| [`mouseX`](ru-ru/input/mouse/mouseX.md) | Свойство, которое всегда содержит текущую горизонтальную координату мыши            |
| [`mouseY`](ru-ru/input/mouse/mouseY.md) | Свойство, которое всегда содержит текущую вертикальную координату мыши            |
| [`pmouseX`](ru-ru/input/mouse/pmouseX.md) | Свойство, которое всегда содержит горизонтальное положение мыши в кадре, предшествующем текущему кадру            |
| [`pmouseY`](ru-ru/input/mouse/pmouseY.md) | Свойство, которое всегда содержит вертикальное положение мыши в кадре, предшествующем текущему кадру           |
| [`mouseButton`](ru-ru/input/mouse/mouseButton.md) | Показывает, какая кнопка мыши нажата            |
| [`isMousePressed`](ru-ru/input/mouse/isMousePressed.md) | Переменная, хранящая информацию о нажатии кнопки мыши            |
| [`mousePressed()`](ru-ru/input/mouse/mousePressed.md) | Переменная, хранящая информацию о нажатии кнопки мыши            |
| [`mouseDragged()`](ru-ru/input/mouse/mouseDragged.md) | Вызывается один раз при каждом движении мыши и нажатии кнопки мыши            |
| [`mouseReleased()`](ru-ru/input/mouse/mouseReleased.md) | Вызывается каждый раз, когда кнопка мыши отпускается            |
| [`mouseClicked()`](ru-ru/input/mouse/mouseClicked.md) | Вызывается один раз после того, как кнопка мыши была нажата, а затем отпущена            |
| [`mouseMoved()`](ru-ru/input/mouse/mouseMoved.md) | Вызывается каждый раз, когда мышь перемещается, а кнопка мыши не нажата            |
| [`mouseWheel()`](ru-ru/input/mouse/mouseWheel.md) | Код в функции события mouseWheel() запускается при перемещении колесика мыши            |

## Математика
### Случайность
| Feature | Description                                           |
|---|-------------------------------------------------------|
| [`randomSeed()`](ru-ru/math/random/randomSeed.md) | Устанавливает начальное значение для функции random() |
| [`random()`](ru-ru/math/random/random.md) | Генерирует случайные числа                            |
| [`noiseSeed()`](ru-ru/math/random/noiseSeed.md) | Устанавливает начальное значение для функции noise()  |
| [`noiseDetail()`](ru-ru/math/random/noiseDetail.md) |   Регулирует характер и уровень детализации, создаваемой функцией шума Перлина                                                    |
| [`noise()`](ru-ru/math/random/noise.md) | Возвращает значение шума Перлина в указанных координатах                                                      |
| [`randomGaussian()`](ru-ru/math/random/randomGaussian.md) | Возвращает значение float из случайной серии чисел со средним значением 0 и стандартным отклонением 1 |

## Константы
| Feature | Description |
|---|-------------|
| [`HALF_PI`](ru-ru/constants/HALF_PI.md) | HALF_PI - математическая константа со значением 1.57079632679489661923            |
| [`PI`](ru-ru/constants/PI.md) |  PI - математическая константа со значением 3.14159265358979323846           |
| [`QUARTER_PI`](ru-ru/constants/QUARTER_PI.md) | QUARTER_PI - математическая константа со значением 0.7853982            |
| [`TAU`](ru-ru/constants/TAU.md) |  Псевдоним для TWO_PI           |
| [`TWO_PI`](ru-ru/constants/TWO_PI.md) | TWO_PI - математическая константа со значением 6.28318530717958647693            |

## Структура
| Feature | Description                                                                                                                                                                   |
|---|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| [`setup()`](ru-ru/structure/setup.md) | Функция setup() вызывается один раз при запуске программы    |
| [`draw()`](ru-ru/structure/draw.md) | Вызывается непосредственно после setup() и непрерывно выполняет строки кода, содержащиеся в ее блоке, пока программа не будет остановлена или не будет вызвана функция noLoop() |
| [`loop()`](ru-ru/structure/loop.md) | Заставляет Processing непрерывно выполнять код внутри draw()  |
| [`noLoop()`](ru-ru/structure/noLoop.md) | Останавливает Processing от непрерывного выполнения кода внутри draw()                                                                                                        |

## Типографика
| Feature | Description                                              |
|---|----------------------------------------------------------|
| [`text`](ru-ru/typography/text.md) | Рисует текст на экране                                   |
| [`textAlign`](ru-ru/typography/textAlign.md) | Устанавливает текущее выравнивание для рисования текста  |
| [`textAscent`](ru-ru/typography/textAscent.md) |  Возвращает высоту текущего шрифта при его текущем размере                                                        |
| [`textDescent`](ru-ru/typography/textDescent.md) | Возвращает значение текущего шрифта для его текущего размера                                                         |
| [`textFont`](ru-ru/typography/textFont.md) |       Устанавливает текущий шрифт, который будет отрисовываться функцией text()                                                   |
| [`textLeading`](ru-ru/typography/textLeading.md) |   Устанавливает расстояние между строками текста в единицах пикселей                                                       |
| [`textSize`](ru-ru/typography/textSize.md) |   Устанавливает текущий размер шрифта                                                       |
| [`textWidth`](ru-ru/typography/textWidth.md) |     Вычисляет и возвращает ширину любого символа или текстовой строки                                                     |