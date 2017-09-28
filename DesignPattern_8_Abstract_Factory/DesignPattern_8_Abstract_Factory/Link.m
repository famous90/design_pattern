//
//  Link.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Link.h"

@implementation Link

- (instancetype)initWithCaption:(NSString *)caption url:(NSString *)url
{
    self = [super initWithCaption:caption];
    if (self) {
        _url = url;
    }
    return self;
}

@end
