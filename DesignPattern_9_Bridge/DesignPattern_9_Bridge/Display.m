//
//  Display.m
//  DesignPattern_9_Bridge
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Display.h"
#import "DisplayImplementation.h"

@interface Display ()

@property (strong) DisplayImplementation *implementation;

@end

@implementation Display

- (instancetype)initWithDisplayImplementation:(DisplayImplementation *)implementation
{
    self = [super init];
    if (self) {
        _implementation = implementation;
    }
    return self;
}

- (void)open
{
    [self.implementation rawOpen];
}

- (void)print
{
    [self.implementation rawPrint];
}

- (void)close
{
    [self.implementation rawClose];
}

- (void)display
{
    [self open];
    [self print];
    [self close];
}

@end
