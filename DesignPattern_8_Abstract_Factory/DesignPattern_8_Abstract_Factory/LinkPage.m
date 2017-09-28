//
//  LinkPage.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "LinkPage.h"
#import "Item.h"

@implementation LinkPage

- (instancetype)initWithTitle:(NSString *)title author:(NSString *)author
{
    return [super initWithTitle:title author:author];
}

- (NSString *)makeHTML
{
    NSMutableString *html = [NSMutableString string];
    [html appendFormat:@"<html><head><title>%@</title></head></html>\n", self.title];
    [html appendString:@"<body>\n"];
    [html appendFormat:@"<h1>%@</h1>\n", self.title];
    [html appendString:@"<ul>\n"];
    [self.content enumerateObjectsUsingBlock:^(Item * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [html appendString:[obj makeHTML]];
    }];
    [html appendString:@"</ul>\n"];
    [html appendFormat:@"<hr><address>%@</address>", self.author];
    [html appendString:@"</body></html>\n"];
    return html;
}

@end
