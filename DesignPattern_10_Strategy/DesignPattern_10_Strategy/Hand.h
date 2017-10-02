//
//  Hand.h
//  DesignPattern_10_Strategy
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Hand;

typedef NS_ENUM(NSUInteger, HandValue) {
    HandValue_GUU = 0,
    HandValue_CHO = 1,
    HandValue_PAA = 2
};

@interface Hand : NSObject

+ (Hand *)handWithHandValue:(NSUInteger)handValue;
+ (NSArray <Hand *> *)hands;
+ (NSArray <NSString *> *)names;

- (instancetype)initWithHandValue:(NSUInteger)handValue NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (BOOL)isStrongerThanHand:(Hand *)hand;
- (BOOL)isWeakerThanHand:(Hand *)hand;

@end
