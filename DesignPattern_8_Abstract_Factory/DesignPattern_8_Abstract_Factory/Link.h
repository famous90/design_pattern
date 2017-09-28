//
//  Link.h
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Item.h"

@interface Link : Item

@property (readonly, strong) NSString *url;

- (instancetype)initWithCaption:(NSString *)caption url:(NSString *)url NS_DESIGNATED_INITIALIZER;
- (instancetype)initWithCaption:(NSString *)caption NS_UNAVAILABLE;

@end
