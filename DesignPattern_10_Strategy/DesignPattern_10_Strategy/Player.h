//
//  Player.h
//  DesignPattern_10_Strategy
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Hand, Strategy;

@interface Player : NSObject

- (instancetype)initWithName:(NSString *)name strategy:(Strategy *)strategy NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (Hand *)nextHand;
- (void)win;
- (void)lose;
- (void)even;

@end
