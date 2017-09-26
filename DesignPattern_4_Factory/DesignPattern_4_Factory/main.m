//
//  main.m
//  DesignPattern_4_Factory
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "IDCardFactory.h"
#import "IDCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Factory *factory = [[IDCardFactory alloc] init];
        Product *card1 = [factory createWithOwner:@"홍길동"];
        Product *card2 = [factory createWithOwner:@"이순신"];
        Product *card3 = [factory createWithOwner:@"강김찬"];
        [card1 use];
        [card2 use];
        [card3 use];
    }
    return 0;
}
