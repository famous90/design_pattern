//
//  UnderlinePen.h
//  DesignPattern_6_Prototype
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Product.h"

@interface UnderlinePen : NSObject <Product>

- (void)useWithString:(NSString *)string;
- (id<Product>)createClone;

@end
