//
//  FullBorder.m
//  DesignPattern_12_Decorator
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "FullBorder.h"

@implementation FullBorder

- (NSInteger)columns
{
    return 1 + [self.display columns] + 1;
}

- (NSInteger)rows
{
    return 1 + [self.display rows] + 1;
}

- (NSString *)rowTextWithRow:(NSInteger)row
{
    if (row == 0) {
        return [NSString stringWithFormat:@"+%@+", [self makeLineWithCharacter:@"-" count:[self.display columns]]];
    } else if (row == ([self.display rows] + 1)) {
        return [NSString stringWithFormat:@"+%@+", [self makeLineWithCharacter:@"-" count:[self.display columns]]];
    } else {
        return [NSString stringWithFormat:@"-%@-", [self.display rowTextWithRow:row-1]];
    }
}

- (NSString *)makeLineWithCharacter:(NSString *)character count:(NSInteger)count
{
    NSMutableString *string = [NSMutableString string];
    for (int i=0; i<count; i++) {
        [string appendString:character];
    }
    return [string copy];
}

@end
