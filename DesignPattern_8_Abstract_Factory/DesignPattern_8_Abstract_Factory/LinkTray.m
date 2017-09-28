//
//  LinkTray.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "LinkTray.h"

@implementation LinkTray

- (instancetype)initWithCaption:(NSString *)caption
{
    return [super initWithCaption:caption];
}

- (NSString *)makeHTML
{
    NSMutableString *html = [NSMutableString string];
    [html appendString:@"<li>\n"];
    [html appendFormat:@"%@\n", self.caption];
    [html appendFormat:@"<ul>\n"];
    [self.tray enumerateObjectsUsingBlock:^(Item * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [html appendString:[obj makeHTML]];
    }];
    [html appendString:@"</ul>\n"];
    [html appendString:@"</li>\n"];
    return [html copy];
}

@end
