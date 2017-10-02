//
//  HTMLBuilder.m
//  DesignPattern_7_Builder
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "HTMLBuilder.h"

@interface HTMLBuilder ()

@property (nonatomic, strong) NSMutableString *filename;

@end

@implementation HTMLBuilder

- (instancetype)init
{
    self = [super init];
    if (self) {
        _filename = [NSMutableString string];
    }
    return self;
}

- (void)makeTitle:(NSString *)title
{
    [self.filename appendFormat:@"%@.html", title];
    NSLog(@"<html><head><title>%@</title></head><body>", title);
    NSLog(@"<h1>%@</h1>", title);
}

- (void)makeString:(NSString *)string
{
    NSLog(@"<p>%@</p>", string);
}

- (void)makeItems:(NSArray<NSString *> *)items
{
    NSLog(@"<ul>");
    for (NSString *item in items) {
        NSLog(@"<li>%@</li>", item);
    }
    NSLog(@"</ul>");
}

- (void)close
{
    NSLog(@"</body></html>");
}

- (NSString *)result
{
    return self.filename;
}

@end
