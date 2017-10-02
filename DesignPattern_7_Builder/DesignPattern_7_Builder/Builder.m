//
//  Builder.m
//  DesignPattern_7_Builder
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Builder.h"

@implementation Builder

- (void)makeTitle:(NSString *)title
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)makeString:(NSString *)string
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)makeItems:(NSArray <NSString *> *)items
{
    [self doesNotRecognizeSelector:_cmd];
}

- (void)close
{
    [self doesNotRecognizeSelector:_cmd];
}

@end
