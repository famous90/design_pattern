//
//  Player.m
//  DesignPattern_10_Strategy
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Player.h"
#import "Strategy.h"

@interface Player ()
@property (strong) NSString *name;
@property (strong) Strategy *strategy;
@property (assign) NSInteger winCount;
@property (assign) NSInteger loseCount;
@property (assign) NSInteger gameCount;
@end

@implementation Player

- (instancetype)initWithName:(NSString *)name strategy:(Strategy *)strategy
{
    self = [super init];
    if (self) {
        _name = name;
        _strategy = strategy;
    }
    return self;
}

- (Hand *)nextHand
{
    return [self.strategy nextHand];
}

- (void)win
{
    [self.strategy studyWithWin:YES];
    self.winCount++;
    self.gameCount++;
}

- (void)lose
{
    [self.strategy studyWithWin:NO];
    self.loseCount++;
    self.gameCount++;
}

- (void)even
{
    self.gameCount++;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"[%@:%tu games, %tu win, %tu lose]", self.name, self.gameCount, self.winCount, self.loseCount];
}

@end
