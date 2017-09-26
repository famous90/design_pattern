//
//  IDCard.m
//  DesignPattern_4_Factory
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "IDCard.h"

@interface IDCard ()

@property (nonatomic, strong) NSString *owner;

@end

@implementation IDCard

- (instancetype)initWithOwner:(NSString *)owner
{
    self = [super init];
    if (self) {
        NSLog(@"%@의 카드를 만듧니다", owner);
        _owner = owner;
    }
    return self;
}

- (void)use
{
    NSLog(@"%@의 카드를 사용합니다", self.owner);
}

- (NSString *)owner
{
    return _owner;
}

@end
