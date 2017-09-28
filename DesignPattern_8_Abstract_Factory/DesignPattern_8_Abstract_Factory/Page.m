//
//  Page.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Page.h"
#import "Item.h"

@interface Page ()

@end

@implementation Page

- (instancetype)initWithTitle:(NSString *)title author:(NSString *)author
{
    self = [super init];
    if (self) {
        _title = title;
        _author = author;
        _content = [NSMutableArray array];
    }
    return self;
}

- (void)addItem:(Item *)item
{
    [self.content addObject:item];
}

- (void)output
{
    NSString *fileName = [NSString stringWithFormat:@"%@.html", self.title];
    NSFileHandle *fileHandle = [NSFileHandle fileHandleForWritingAtPath:fileName];
    [fileHandle seekToEndOfFile];
    [fileHandle writeData:[[self makeHTML] dataUsingEncoding:NSUTF8StringEncoding]];
    [fileHandle closeFile];
}

- (NSString *)makeHTML
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

@end
