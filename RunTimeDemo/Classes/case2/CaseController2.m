//
//  CaseController2.m
//  RunTimeDemo
//
//  Created by apple on 16/5/25.
//  Copyright © 2016年 Pxl. All rights reserved.
//  动态添加方法

#import "CaseController2.h"
#import "Person2.h"

@implementation CaseController2


-(void)viewDidLoad{
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
    // performSelector:动态添加方法
    Person2 *p = [[Person2 alloc] init];
    
    // 动态添加方法
    //    [p performSelector:@selector(eat)];
    [p performSelector:@selector(eat:) withObject:@111];

}

@end
