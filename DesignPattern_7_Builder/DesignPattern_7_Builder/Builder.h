//
//  Builder.h
//  DesignPattern_7_Builder
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Builder : NSObject

- (void)makeTitle:(NSString *)title;
- (void)makeString:(NSString *)string;
- (void)makeItems:(NSArray <NSString *> *)items;
- (void)close;

@end
