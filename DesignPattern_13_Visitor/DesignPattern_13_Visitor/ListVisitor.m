//
//  ListVisitor.m
//  DesignPattern_13_Visitor
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "ListVisitor.h"
#import "File.h"
#import "Directory.h"

@interface ListVisitor ()
@property (nonatomic, strong) NSString *currentDirectory;
@end

@implementation ListVisitor

- (instancetype)init
{
    self = [super init];
    if (self) {
        _currentDirectory = @"";
    }
    return self;
}

- (void)visitWithFile:(File *)file
{
    NSLog(@"%@/%@", self.currentDirectory, file);
}

- (void)visitWithDirectory:(Directory *)directory
{
    NSLog(@"%@/%@", self.currentDirectory, directory);
    NSString *saveDir = self.currentDirectory;
    self.currentDirectory = [NSString stringWithFormat:@"%@/%@", self.currentDirectory, [directory name]];
    [directory.directory enumerateObjectsUsingBlock:^(Entry * _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
        [obj acceptWithVisitor:self];
    }];
    self.currentDirectory = saveDir;
}

@end
