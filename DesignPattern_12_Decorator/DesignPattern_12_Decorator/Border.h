//
//  Border.h
//  DesignPattern_12_Decorator
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Display.h"

@interface Border : Display

@property (readonly, strong) Display *display;

- (instancetype)initWithDisplay:(Display *)display NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

@end
