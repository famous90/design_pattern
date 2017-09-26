//
//  Manager.m
//  DesignPattern_6_Prototype
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Manager.h"

@interface Manager ()

@property (nonatomic, strong) NSMutableDictionary *showCase;

@end

@implementation Manager

+ (void)registerWithName:(NSString *)name prototype:(id<Product>)prototype
{
    NSMutableDictionary *theShowCase = [self showCase];
    [theShowCase setValue:prototype forKey:name];
}

+ (id<Product>)createWithProtoTypeName:(NSString *)name
{
    NSMutableDictionary *theShowCase = [self showCase];
    id<Product> product = (id<Product>)[theShowCase valueForKey:name];
    return [product createClone];
}

#pragma mark - Internal

+ (instancetype)getInstance
{
    static id instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

+ (NSMutableDictionary *)showCase
{
    return [[self getInstance] showCase];
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

@end
