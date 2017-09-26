//
//  IDCard.h
//  DesignPattern_4_Factory
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Product.h"

@interface IDCard : Product

- (instancetype)initWithOwner:(NSString *)owner NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (void)use;
- (NSString *)owner;

@end
