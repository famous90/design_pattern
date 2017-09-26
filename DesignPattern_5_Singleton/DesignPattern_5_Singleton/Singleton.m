//
//  Singleton.m
//  DesignPattern_5_Singleton
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (instancetype)getInstance
{
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"인스턴스를 생성했습니다.");
    }
    return self;
}

@end
