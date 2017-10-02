//
//  StringDisplayImplementation.m
//  DesignPattern_9_Bridge
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "StringDisplayImplementation.h"

@interface StringDisplayImplementation ()

@property (strong) NSString *string;
@property (assign) NSUInteger width;

@end

@implementation StringDisplayImplementation

- (instancetype)initWithString:(NSString *)string
{
    self = [super init];
    if (self) {
        _string = string;
        _width = [string length];
    }
    return self;
}

- (void)rawOpen
{
    [self printLine];
}

- (void)rawPrint
{
    NSLog(@"|%@|", self.string);
}

- (void)rawClose
{
    [self printLine];
}

- (void)printLine
{
    NSMutableString *log = [NSMutableString string];
    [log appendString:@"+"];
    for (NSUInteger i=0; i<self.width; i++) {
        [log appendString:@"-"];
    }
    [log appendString:@"+"];
}

@end
