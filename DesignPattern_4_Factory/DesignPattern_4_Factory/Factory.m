//
//  Factory.m
//  DesignPattern_4_Factory
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Factory.h"
#import "Product.h"

@implementation Factory

- (Product *)createWithOwner:(NSString *)owner
{
    Product *product = [self createProductWithOwner:owner];
    [self registerProduct:product];
    return product;
}

- (Product *)createProductWithOwner:(NSString *)owner
{
    [self doesNotRecognizeSelector:_cmd];
    return nil;
}

- (void)registerProduct:(Product *)product
{
    [self doesNotRecognizeSelector:_cmd];
}

@end
