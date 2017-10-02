//
//  TableTray.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "TableTray.h"

@implementation TableTray

- (NSString *)makeHTML
{
    NSMutableString *html = [NSMutableString string];
    [html appendString:@"<td>"];
    [html appendString:@"<table width=\"100%\" border=\"1\"><tr>"];
    [html appendFormat:@"<td bgcolor=\"#cccccc\" align=\"center\" colspan=\"%tu\"><b>%@</b></td>", [self.tray count], self.caption];
    [html appendString:@"</tr>\\n"];
    [html appendString:@"<tr>\\n"];
    [self.tray enumerateObjectsUsingBlock:^(Item * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [html appendString:[obj makeHTML]];
    }];
    [html appendString:@"</tr></table>"];
    [html appendString:@"</td>"];
    return [html copy];
}

@end
