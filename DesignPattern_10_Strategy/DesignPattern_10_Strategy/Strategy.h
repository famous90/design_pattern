//
//  Strategy.h
//  DesignPattern_10_Strategy
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Hand;

@protocol Strategy

- (Hand *)nextHand;
- (void)studyWithWin:(BOOL)win;

@end
