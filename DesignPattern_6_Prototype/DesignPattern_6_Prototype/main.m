//
//  main.m
//  DesignPattern_6_Prototype
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Manager.h"
#import "UnderlinePen.h"
#import "MessageBox.h"
#import "Product.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        // ready
        UnderlinePen *ulPen = [[UnderlinePen alloc] initWithDecorator:@"~"];
        MessageBox *mBox = [[MessageBox alloc] initWithDecorator:@"*"];
        MessageBox *sBox = [[MessageBox alloc] initWithDecorator:@"/"];
        [Manager registerWithName:@"strong message" prototype:ulPen];
        [Manager registerWithName:@"warning box" prototype:mBox];
        [Manager registerWithName:@"slash box" prototype:sBox];
        
        // initialize
        id<Product> product1 = [Manager createWithProtoTypeName:@"strong message"];
        [product1 useWithString:@"hello world"];
        id<Product> product2 = [Manager createWithProtoTypeName:@"warning box"];
        [product2 useWithString:@"famous90"];
        id<Product> product3 = [Manager createWithProtoTypeName:@"slash box"];
        [product3 useWithString:@"gyuyoung"];
    }
    return 0;
}
