//
//  ProbStrategy.m
//  DesignPattern_10_Strategy
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "ProbStrategy.h"
#import "Hand.h"

@interface ProbStrategy ()
@property (assign) NSInteger prevHandValue;
@property (assign) NSInteger currentHandValue;
@property (strong) NSMutableArray <NSMutableArray <NSNumber *> *> *history;
@end

@implementation ProbStrategy

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.prevHandValue = 0;
        self.currentHandValue = 0;
        self.history = [@[[@[@(1), @(1), @(1)] mutableCopy],
                          [@[@(1), @(1), @(1)] mutableCopy],
                          [@[@(1), @(1), @(1)] mutableCopy]] mutableCopy];
    }
    return self;
}

- (Hand *)nextHand
{
    NSUInteger bet = arc4random_uniform((int)[self sumWithHandValue:self.currentHandValue]);
    NSInteger handValue = 0;
    if (bet < [self.history[self.currentHandValue][0] unsignedIntegerValue]) {
        handValue = 0;
    } else if (bet < ([self.history[self.currentHandValue][0] unsignedIntegerValue] + [self.history[self.currentHandValue][1] unsignedIntegerValue])) {
        handValue = 1;
    } else {
        handValue = 2;
    }
    
    self.prevHandValue = self.currentHandValue;
    self.currentHandValue = handValue;
    return [Hand handWithHandValue:handValue];
}

- (void)studyWithWin:(BOOL)win
{
    if (win) {
        NSInteger probability = [self.history[self.prevHandValue][self.currentHandValue] integerValue];
        probability++;
        self.history[self.prevHandValue][self.currentHandValue] = @(probability);
    } else {
        NSInteger probability1 = [self.history[self.prevHandValue][(self.currentHandValue + 1)%3] integerValue];
        probability1++;
        (self.history[self.prevHandValue])[(self.currentHandValue + 1)%3] = @(probability1);
        NSInteger probability2 = [self.history[self.prevHandValue][(self.currentHandValue + 2)%3] integerValue];
        probability2++;
        self.history[self.prevHandValue][(self.currentHandValue + 2)%3] = @(probability2);
    }
}

- (NSInteger)sumWithHandValue:(NSInteger)handValue
{
    NSInteger sum = 0;
    for (int i=0; i<3; i++) {
        sum += [(self.history[handValue])[i] integerValue];
    }
    return sum;
}

@end
