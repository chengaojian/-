//
//  KCTouchEventViewController.m
//  触摸事件
//
//  Created by 陈高健 on 15/10/30.
//  Copyright © 2015年 陈高健. All rights reserved.
//

#import "KCTouchEventViewController.h"
#import "KCImage.h"

@interface KCTouchEventViewController ()
@property (strong,nonatomic)KCImage *KCImage;
@end

@implementation KCTouchEventViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建KCImage视图
    self.KCImage=[[KCImage alloc]initWithFrame:CGRectMake(50, 50, 200, 150)];
    //将视图添加到控制器中
    [self.view addSubview:self.KCImage];
}

//视图控制器的触摸事件
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    NSLog(@"控制器开始触摸了");
    UITouch *t=touches.anyObject;
//    NSLog(@"%ld",(long)t.tapCount);
//    NSLog(@"%f",t.timestamp);
//    UITouchPhase tp= t.phase;
//    NSLog(@"%d",tp);
    NSLog(@"%@",t.view);
    NSLog(@"%@",t.window);
    
}

- (void)touchesMoved:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    //获取当前触摸对象
    UITouch *touch=touches.anyObject;
    //获取当前位置
    CGPoint p=[touch locationInView:self.view];
   
    //获取上一个位置
    CGPoint lastP=[touch previousLocationInView:self.view];
   
    //移动前的中心位置
    CGPoint center1=self.KCImage.center;
    //移动偏移量  就等于上一个位置的减去当前移动的量
    CGPoint offset=CGPointMake(p.x-lastP.x, p.y-lastP.y);
    //重新设置位置
    
//    self.view.center=CGPointMake(offset.x+p.x,offset.y+p.y);
    self.KCImage.center=CGPointMake(center1.x+offset.x, center1.y+offset.y);
    
//    UITouch *touch=touches.anyObject;
//    CGPoint current=[touch locationInView:self.view];
//    CGPoint previous=[touch previousLocationInView:self.view];
//    CGPoint center=self.KCImage.center;
//    CGPoint offsex=CGPointMake(current.x-previous.x, current.y-previous.y);
//    self.KCImage.center=CGPointMake(center.x+offsex.x, center.y+offsex.y);
    
    
    
//    UITouch *touch=[touches anyObject];
//    //NSLog(@"%@",touch);
//    
//    //取得当前位置
//    CGPoint current=[touch locationInView:self.view];
//    //取得前一个位置
//    CGPoint previous=[touch previousLocationInView:self.view];
//    
//    //移动前的中点位置
//    CGPoint center=self.KCImage.center;
//    //移动偏移量
//    CGPoint offset=CGPointMake(current.x-previous.x, current.y-previous.y);
//    
//    //重新设置新位置
//    self.KCImage.center=CGPointMake(center.x+offset.x, center.y+offset.y);
//    
//    NSLog(@"UIViewController moving...");
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
}

@end
