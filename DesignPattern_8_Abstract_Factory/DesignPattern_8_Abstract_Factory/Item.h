//
//  Item.h
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Item : NSObject

@property (readonly, strong) NSString *caption;

- (instancetype)initWithCaption:(NSString *)caption NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (NSString *)makeHTML;

@end
