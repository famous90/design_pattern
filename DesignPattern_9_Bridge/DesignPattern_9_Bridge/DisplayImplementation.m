//
//  DisplayImplementation.m
//  DesignPattern_9_Bridge
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "DisplayImplementation.h"

@implementation DisplayImplementation

- (void)rawOpen
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)rawPrint
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)rawClose
{
    [self doesNotRecognizeSelector:_cmd];
}

@end
