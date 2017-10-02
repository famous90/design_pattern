//
//  Entry.m
//  DesignPattern_11_Composite
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Entry.h"

@implementation Entry

- (NSString *)name
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (NSInteger)size
{
    [self doesNotRecognizeSelector:_cmd];
    return 0;
}

- (Entry *)addEntry:(Entry *)entry
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (void)printList
{
    [self printListWithPrefix:@""];
}

- (void)printListWithPrefix:(NSString *)prefix
{
    [self doesNotRecognizeSelector:_cmd];
}

- (NSString *)description
{
    NSString *desc = [NSString stringWithFormat:@"%@ (%tu)", self.name, self.size];
    return desc;
}

@end
