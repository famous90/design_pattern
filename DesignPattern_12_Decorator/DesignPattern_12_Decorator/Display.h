//
//  Display.h
//  DesignPattern_12_Decorator
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Display : NSObject

- (NSInteger)columns;
- (NSInteger)rows;
- (NSString *)rowTextWithRow:(NSInteger)row;
- (void)show;

@end
