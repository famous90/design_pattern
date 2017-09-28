//
//  ListLink.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "ListLink.h"

@implementation ListLink

- (instancetype)initWithCaption:(NSString *)caption url:(NSString *)url
{
    self = [super initWithCaption:caption url:url];
    return self;
}

- (NSString *)makeHTML
{
    NSString *html = [NSString stringWithFormat:@"  <li><a href=\"%@\">%@</a></li>\n", self.url, self.caption];
    return html;
}

@end
