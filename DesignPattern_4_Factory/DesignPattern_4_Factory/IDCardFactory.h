//
//  IDCardFactory.h
//  DesignPattern_4_Factory
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Factory.h"

@class IDCard;

@interface IDCardFactory : Factory

- (Product *)createProductWithOwner:(NSString *)owner;
- (void)registerProduct:(Product *)product;
- (NSArray <IDCard *> *)owners;

@end
