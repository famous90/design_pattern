//
//  Hand.m
//  DesignPattern_10_Strategy
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Hand.h"

@interface Hand ()

@property (assign) NSUInteger handValue;

@end

@implementation Hand

- (instancetype)initWithHandValue:(NSUInteger)handValue
{
    self = [super init];
    if (self) {
        _handValue = handValue;
    }
    return self;
}

+ (Hand *)handWithHandValue:(NSUInteger)handValue
{
    return [self hands][handValue];
}

+ (NSArray <Hand *> *)hands
{
    static NSArray <Hand *> *hands;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        hands = @[[[Hand alloc] initWithHandValue:HandValue_GUU],
                  [[Hand alloc] initWithHandValue:HandValue_CHO],
                  [[Hand alloc] initWithHandValue:HandValue_PAA]];
    });
    return hands;
}

+ (NSArray <NSString *> *)names
{
    static NSArray <NSString *> *names;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        names = @[@"stone", @"paper", @"scissor"];
    });
    return names;
}

- (BOOL)isStrongerThanHand:(Hand *)hand
{
    return ([self fightWithHand:hand] == 1);
}

- (BOOL)isWeakerThanHand:(Hand *)hand
{
    return ([self fightWithHand:hand] == -1);
}

- (NSString *)description
{
    return [[self class] names][self.handValue];
}

#pragma mark - Internal
- (NSInteger)fightWithHand:(Hand *)hand
{
    if (self.handValue == hand.handValue) {
        return 0;
    } else if ((self.handValue + 1) % 3 == hand.handValue) {
        return 1;
    } else {
        return -1;
    }
}

@end
