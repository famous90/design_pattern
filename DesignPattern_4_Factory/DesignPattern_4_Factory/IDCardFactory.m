//
//  IDCardFactory.m
//  DesignPattern_4_Factory
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "IDCardFactory.h"
#import "IDCard.h"

@interface IDCardFactory ()

@property (nonatomic, strong) NSMutableArray <IDCard *> *owners;

@end

@implementation IDCardFactory

- (Product *)createProductWithOwner:(NSString *)owner
{
    IDCard *card = [[IDCard alloc] initWithOwner:owner];
    return card;
}

- (void)registerProduct:(Product *)product
{
//    NSString *owner = [(IDCard *)product owner];
    [_owners addObject:(IDCard *)product];
}

- (NSArray <IDCard *> *)owners
{
    return [self.owners copy];
}

#pragma mark - Internal

- (instancetype)init
{
    self = [super init];
    if (self) {
        _owners = [NSMutableArray array];
    }
    return self;
}

@end
