//
//  StringDisplay.m
//  DesignPattern_12_Decorator
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "StringDisplay.h"

@interface StringDisplay ()
@property (nonatomic, strong) NSString *string;
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

- (NSInteger)columns
{
    return [self.string length];
}

- (NSInteger)rows
{
    return 1;
}

- (NSString *)rowTextWithRow:(NSInteger)row
{
    if (row == 0) {
        return self.string;
    } else {
        return nil;
    }
}

@end
