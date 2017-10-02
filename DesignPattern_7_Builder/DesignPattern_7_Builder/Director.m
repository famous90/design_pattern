//
//  Director.m
//  DesignPattern_7_Builder
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Director.h"
#import "Builder.h"

@interface Director ()

@property (nonatomic, strong) Builder *builder;

@end

@implementation Director

- (instancetype)initWithBuilder:(Builder *)builder
{
    self = [super init];
    if (self) {
        _builder = builder;
    }
    return self;
}

- (void)construct
{
    [self.builder makeTitle:@"Greeting"];
    [self.builder makeString:@"between Morning and Noght"];
    [self.builder makeItems:@[@"Good morning", @"Hello"]];
    [self.builder makeString:@"at night"];
    [self.builder makeItems:@[@"Hi", @"Good Night", @"See U"]];
    [self.builder close];
}

@end
