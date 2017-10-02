//
//  File.m
//  DesignPattern_11_Composite
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "File.h"

@interface File ()
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) NSInteger size;
@end

@implementation File

- (instancetype)initWithName:(NSString *)name size:(NSInteger)size
{
    self = [super init];
    if (self) {
        _name = name;
        _size = size;
    }
    return self;
}

- (NSString *)name
{
    return _name;
}

- (NSInteger)size
{
    return _size;
}

- (void)printListWithPrefix:(NSString *)prefix
{
    NSLog(@"%@/%@", prefix, [self description]);
}

@end
