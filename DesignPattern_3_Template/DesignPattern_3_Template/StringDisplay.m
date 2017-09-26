//
//  StringDisplay.m
//  DesignPattern_3_Template
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "StringDisplay.h"

@interface StringDisplay ()

@property (strong) NSString *string;

@end

@implementation StringDisplay

- (instancetype)initWithString:(NSString *)string
{
    self = [super init];
    if (self) {
        _string = string;
    }
    return self;
}

- (void)open
{
    [self printLine];
}

- (void)print
{
    NSLog(@"| %@ |", self.string);
}

- (void)close
{
    [self printLine];
}

- (void)printLine
{
    NSMutableString *line = [[NSMutableString alloc] init];
    [line appendString:@"+"];
    for (int i=0; i<[self.string length]; i++) {
        [line appendString:@"-"];
    }
    [line appendString:@"+"];
    NSLog(@"%@", line);
}

@end
