//
//  AbstractDisplay.m
//  DesignPattern_3_Template
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "AbstractDisplay.h"

@implementation AbstractDisplay

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)open
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)print
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)close
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)display
{
    [self open];
    for (int i=0; i<5; i++) {
        [self print];
    }
    [self close];
}

@end
