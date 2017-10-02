//
//  Display.m
//  DesignPattern_12_Decorator
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Display.h"

@implementation Display

- (NSInteger)columns
{
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (NSInteger)rows
{
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (NSString *)rowTextWithRow:(NSInteger)row
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (void)show
{
    for (NSInteger i=0; i<[self rows]; i++) {
        NSLog(@"%@", [self rowTextWithRow:i]);
    }
}

@end
