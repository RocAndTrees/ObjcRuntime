//
//  CaseController3.m
//  RunTimeDemo
//
//  Created by apple on 16/5/25.
//  Copyright © 2016年 Pxl. All rights reserved.
//  交换方法

#import "CaseController3.h"

@implementation CaseController3
-(void)viewDidLoad{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    
    //    UIImage *image = [UIImage imageNamed:@"123"];
    // 1.每次使用,都需要导入头文件
    // 2.当一个项目开发太久,使用这个方式不靠谱
    [UIImage imageNamed:@"123"];
    
    // imageNamed:
    // 实现方法:底层调用xmg_imageNamed
    
    // 本质:交换两个方法的实现imageNamed和xmg_imageNamed方法
    // 调用imageNamed其实就是调用xmg_imageNamed
    
    
    // imageNamed加载图片,并不知道图片是否加载成功
    // 以后调用imageNamed的时候,就知道图片是否加载

}
@end
