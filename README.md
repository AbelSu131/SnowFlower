# SnowFlower
#### SnowFlower---飘落的雪花动画效果
要想实现自动雪花飘落的效果，首先，需要创建一个定时器NSTimer :

```
[NSTimer scheduledTimerWithTimeInterval:(0.05) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
```

从上述代码中可以看出，定时器每隔0.05秒执行一次onTimer方法，由于定时器在执行onTimer方法时所需的时间间隔很短，所以就会产生大量雪花飘落的效果，至于每一个雪花的飘落的开始位置、结束位置以及速度等的不同，是因为这些值都是随机的。

效果如下：

![snowgif](https://raw.githubusercontent.com/AbelSu131/SnowFlower/master/Untitled.gif)
