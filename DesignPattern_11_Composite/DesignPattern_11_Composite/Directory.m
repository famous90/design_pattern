//
//  Directory.m
//  DesignPattern_11_Composite
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Directory.h"

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
    [self.directory addObject:entry];
    return self;
}

- (void)printListWithPrefix:(NSString *)prefix
{
    NSLog(@"%@/%@", prefix, [self description]);
    [self.directory enumerateObjectsUsingBlock:^(Entry * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        NSString *thePrefix = [NSString stringWithFormat:@"%@/%@", prefix, self.name];
        [obj printListWithPrefix:thePrefix];
    }];
}

@end
