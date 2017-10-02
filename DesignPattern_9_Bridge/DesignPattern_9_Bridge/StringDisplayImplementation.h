//
//  StringDisplayImplementation.h
//  DesignPattern_9_Bridge
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "DisplayImplementation.h"

@interface StringDisplayImplementation : DisplayImplementation

- (instancetype)initWithString:(NSString *)string NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (void)printLine;

@end
