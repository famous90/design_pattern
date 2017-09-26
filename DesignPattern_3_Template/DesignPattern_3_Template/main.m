//
//  main.m
//  DesignPattern_3_Template
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CharDisplay.h"
#import "StringDisplay.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        AbstractDisplay *display1 = [[CharDisplay alloc] initWithCharacter:@"H"];
        AbstractDisplay *display2 = [[StringDisplay alloc] initWithString:@"Hello, World"];
        AbstractDisplay *display3 = [[StringDisplay alloc] initWithString:@"안녕하세요."];
        [display1 display];
        [display2 display];
        [display3 display];
    }
    return 0;
}
