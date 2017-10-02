//
//  TextBuilder.m
//  DesignPattern_7_Builder
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "TextBuilder.h"

@interface TextBuilder ()

@property (nonatomic, strong) NSMutableString *buffer;

@end

@implementation TextBuilder

- (instancetype)init
{
    self = [super init];
    if (self) {
        _buffer = [NSMutableString string];
    }
    return self;
}

- (void)makeTitle:(NSString *)title
{
    [self.buffer appendString:@"\n===========================\n"];
    [self.buffer appendFormat:@"* %@ *\n", title];
}

- (void)makeString:(NSString *)string
{
    [self.buffer appendFormat:@"# %@ #\n", string];
}

- (void)makeItems:(NSArray<NSString *> *)items
{
    for (NSString *item in items) {
        [self.buffer appendFormat:@"+ %@ +\n", item];
    }
}

- (void)close
{
    [self.buffer appendString:@"===========================\n"];
}

- (NSString *)result
{
    return [self.buffer copy];
}

@end
