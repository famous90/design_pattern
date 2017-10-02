//
//  WinningStrategy.m
//  DesignPattern_10_Strategy
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "WinningStrategy.h"
#import "Hand.h"

@interface WinningStrategy ()
@property (strong) Hand *prevHand;
@property (assign) BOOL won;
@end

@implementation WinningStrategy

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.won = false;
    }
    return self;
}

- (Hand *)nextHand
{
    if (!self.won) {
        NSUInteger randomNumber = arc4random_uniform(3);
        self.prevHand = [Hand handWithHandValue:randomNumber];
    }
    return self.prevHand;
}

- (void)studyWithWin:(BOOL)win
{
    self.won = win;
}

@end
