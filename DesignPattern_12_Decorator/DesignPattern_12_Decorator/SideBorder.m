//
//  SideBorder.m
//  DesignPattern_12_Decorator
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "SideBorder.h"

@interface SideBorder ()
@property (nonatomic, strong) NSString *character;
@end

@implementation SideBorder

- (instancetype)initWithDisplay:(Display *)display character:(NSString *)character
{
    self = [super initWithDisplay:display];
    if (self) {
        _character = character;
    }
    return self;
}

- (NSInteger)columns
{
    return 1 + [self.display columns] + 1;
}

- (NSInteger)rows
{
    return [self.display rows];
}

- (NSString *)rowTextWithRow:(NSInteger)row
{
    return [NSString stringWithFormat:@"%@%@%@", self.character, [self.display rowTextWithRow:row], self.character];
}

@end
