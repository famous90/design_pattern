//
//  Display.h
//  DesignPattern_9_Bridge
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DisplayImplementation;

@interface Display : NSObject

- (instancetype)initWithDisplayImplementation:(DisplayImplementation *)implementation NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (void)open;
- (void)print;
- (void)close;
- (void)display;

@end
