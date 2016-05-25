//
//  Person.m
//  RunTimeDemo
//
//  Created by apple on 16/5/25.
//  Copyright © 2016年 Pxl. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void)eat
{
    NSLog(@"对象方法-吃东西");
}

+ (void)eat
{
    NSLog(@"类方法-吃东西");
}

- (void)run:(int)age
{
    NSLog(@"%d",age);
}
@end
