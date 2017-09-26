//
//  MessageBox.m
//  DesignPattern_6_Prototype
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "MessageBox.h"

@interface MessageBox ()

@property (strong) NSString *decoString;

@end

@implementation MessageBox

- (instancetype)initWithDecorator:(NSString *)decoString
{
    self = [super init];
    if (self) {
        _decoString = decoString;
    }
    return self;
}

- (void)useWithString:(NSString *)string;
{
    NSUInteger length = [string length];
    NSMutableString *log = [NSMutableString new];
    for (NSUInteger i=0; i<length+4; i++) {
        [log appendString:self.decoString];
    }
    NSLog(@"%@", log);
    NSLog(@"%@ %@ %@", self.decoString, string, self.decoString);
    NSLog(@"%@", log);
}

- (id<Product>)createClone
{
    return [self copy];
}

#pragma mark - NSCopying

- (instancetype)copyWithZone:(NSZone *)zone
{
    return [[MessageBox allocWithZone:zone] initWithDecorator:self.decoString];
}

@end
