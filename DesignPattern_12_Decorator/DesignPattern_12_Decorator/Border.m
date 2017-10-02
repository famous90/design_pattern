//
//  Border.m
//  DesignPattern_12_Decorator
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Border.h"

@implementation Border

- (instancetype)initWithDisplay:(Display *)display
{
    self = [super init];
    if (self) {
        _display = display;
    }
    return self;
}

@end
