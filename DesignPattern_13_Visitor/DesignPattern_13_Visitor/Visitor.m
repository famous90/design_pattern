//
//  Visitor.m
//  DesignPattern_13_Visitor
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Visitor.h"

@implementation Visitor

- (void)visitWithFile:(File *)file
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)visitWithDirectory:(Directory *)directory
{
    [self doesNotRecognizeSelector:_cmd];
}

@end
