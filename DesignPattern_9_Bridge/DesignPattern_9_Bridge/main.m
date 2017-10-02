//
//  main.m
//  DesignPattern_9_Bridge
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CountDisplay.h"
#import "StringDisplayImplementation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Display *display1 = [[Display alloc] initWithDisplayImplementation:[[StringDisplayImplementation alloc] initWithString:@"Hello, Korea"]];
        Display *display2 = [[CountDisplay alloc] initWithDisplayImplementation:[[StringDisplayImplementation alloc] initWithString:@"Hello, Korea"]];
        CountDisplay *display3 = [[CountDisplay alloc] initWithDisplayImplementation:[[StringDisplayImplementation alloc] initWithString:@"Hello, Universe"]];
        
        [display1 display];
        [display2 display];
        [display3 display];
        [display3 multiDisplayAtTimes:5];
    }
    return 0;
}
