//
//  Directory.m
//  DesignPattern_13_Visitor
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Directory.h"
#import "Visitor.h"

@interface Directory ()
@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSMutableArray <Entry *> *directory;
@end

@implementation Directory

- (instancetype)initWithName:(NSString *)name
{
    self = [super init];
    if (self) {
        _name = name;
        _directory = [NSMutableArray array];
    }
    return self;
}

- (NSString *)name
{
    return _name;
}

- (NSInteger)size
{
    __block NSInteger size = 0;
    [self.directory enumerateObjectsUsingBlock:^(Entry * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        size += [obj size];
    }];
    return size;
}

- (Entry *)addEntry:(Entry *)entry
{
    [_directory addObject:entry];
    return self;
}

- (NSArray <Entry *> *)directory
{
    return [_directory copy];
}

- (void)acceptWithVisitor:(Visitor *)visitor
{
    [visitor visitWithDirectory:self];
}

@end
