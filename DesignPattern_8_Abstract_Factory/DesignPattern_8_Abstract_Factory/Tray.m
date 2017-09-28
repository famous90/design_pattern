//
//  Tray.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Tray.h"

@implementation Tray

- (instancetype)initWithCaption:(NSString *)caption
{
    self = [super initWithCaption:caption];
    if (self) {
        _tray = [NSMutableArray array];
    }
    return self;
}

- (void)addItem:(Item *)item
{
    [self.tray addObject:item];
}

@end
