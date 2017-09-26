//
//  main.m
//  DesignPattern_5_Singleton
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Singleton.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Singleton *object1 = [Singleton getInstance];
        Singleton *object2 = [Singleton getInstance];
        if (object1 == object2) {
            NSLog(@"object 1 is equal to object 2");
        } else {
            NSLog(@"object 1 is not equal to object 2");
        }
    }
    return 0;
}
