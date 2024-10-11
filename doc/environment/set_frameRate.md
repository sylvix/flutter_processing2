# set `frameRate`

```dart
set frameRate(int frameRate)
```

Specifies the number of frames to be displayed every second.

For example, setting this property to 30 like this: `frameRate = 30;` will attempt to refresh 30 times a second. 

If the processor is not fast enough to maintain the specified rate, the frame rate will not be achieved.
Setting the frame rate within `setup()` is recommended. The default rate is 60 frames per second.
