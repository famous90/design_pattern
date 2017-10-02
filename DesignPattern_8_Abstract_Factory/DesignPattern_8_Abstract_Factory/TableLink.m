//
//  TableLink.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "TableLink.h"

@implementation TableLink

- (NSString *)makeHTML
{
    NSString *html = [NSString stringWithFormat:@"<td><a href=\\%@\\%@</a></td>\\n", self.url, self.caption];
    return html;
}

@end
