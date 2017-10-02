//
//  File.m
//  DesignPattern_13_Visitor
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "File.h"
#import "Visitor.h"

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

- (void)acceptWithVisitor:(Visitor *)visitor
{
    [visitor visitWithFile:self];
}

@end
