//
//  UnderlinePen.m
//  DesignPattern_6_Prototype
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "UnderlinePen.h"

@interface UnderlinePen ()

@property (strong) NSString *decoChar;

@end

@implementation UnderlinePen

- (instancetype)initWithDecorator:(NSString *)decoChar
{
    self = [super init];
    if (self) {
        _decoChar = decoChar;
    }
    return self;
}

- (void)useWithString:(NSString *)string;
{
    NSUInteger length = [string length];
    NSLog(@"\\%@\\", string);
    NSMutableString *log = [NSMutableString new];
    for (NSUInteger i=0; i<length; i++) {
        [log appendString:self.decoChar];
    }
    NSLog(@"%@", log);
}

- (id<Product>)createClone
{
    return [self copy];
}

#pragma mark - NSCopying

- (instancetype)copyWithZone:(NSZone *)zone
{
    return [[UnderlinePen allocWithZone:zone] initWithDecorator:self.decoChar];
}

@end
