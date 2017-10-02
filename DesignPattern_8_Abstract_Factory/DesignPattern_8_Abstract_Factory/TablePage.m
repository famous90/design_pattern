//
//  TablePage.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "TablePage.h"
#import "Item.h"

@implementation TablePage

- (NSString *)makeHTML
{
    NSMutableString *html = [NSMutableString string];
    [html appendFormat:@"<html><head><title>%@</title></head>", self.title];
    [html appendString:@"<body>\n"];
    [html appendFormat:@"<h1>%@</h1>", self.title];
    [html appendString:@"<table width=\"80%\" border=\"3\">\n"];
    [self.content enumerateObjectsUsingBlock:^(Item * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [html appendString:[obj makeHTML]];
    }];
    [html appendString:@"</table>\n"];
    [html appendFormat:@"<hr><address>%@</address>", self.author];
    [html appendString:@"</body></html>\n"];
    return [html copy];
}

@end
