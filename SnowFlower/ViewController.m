//
//  ViewController.m
//  SnowFlower
//
//  Created by AbelSu on 16/3/12.
//  Copyright © 2016年 AbelSu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    flakeImage = [UIImage imageNamed:@"2.png"];
    //创建定时器 （定时器每隔0.05执行一次onTimer方法）
    [NSTimer scheduledTimerWithTimeInterval:(0.05) target:self selector:@selector(onTimer) userInfo:nil repeats:YES];
}

- (void)onTimer{
    //创建图像视图对象
    UIImageView *flakeView = [[UIImageView alloc]initWithImage:flakeImage];
    //定义图像的开始和结束坐标x值--随机值
    int startX = round(random() % 320);
    int endX = round(random() % 320);
    double scale = 1 /round(random() % 100)+1.0; //生成随机数
    double speed = 1 /round(random() % 100)+1.0; //对图像视图对象进行设置
    flakeView.frame = CGRectMake(startX, -100.0, 25.0*scale, 25.0*scale);
    flakeView.alpha = 0.5; //设置透明度
    [self.view addSubview:flakeView];
    
    //在方法中实现一个雪花飘落的效果，需要使用到UIView块动画
    [UIView beginAnimations:nil context:(__bridge void *)(flakeView)];
    [UIView setAnimationDuration: 5*speed]; //设置动画持续时间
    flakeView.frame = CGRectMake(endX, 800.0, 25.0*scale, 25.0*scale);
    [UIView commitAnimations];
    
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
