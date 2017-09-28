//
//  Item.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Item.h"

@implementation Item

- (instancetype)initWithCaption:(NSString *)caption
{
    self = [super init];
    if (self) {
        _caption = caption;
    }
    return self;
}

- (NSString *)makeHTML
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

@end
