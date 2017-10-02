//
//  CountDisplay.m
//  DesignPattern_9_Bridge
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "CountDisplay.h"

@implementation CountDisplay

- (void)multiDisplayAtTimes:(NSUInteger)times
{
    [self open];
    for (NSUInteger i=0; i<times; i++) {
        [self print];
    }
    [self close];
}

@end
