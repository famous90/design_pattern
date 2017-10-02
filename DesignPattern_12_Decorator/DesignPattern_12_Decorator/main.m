//
//  main.m
//  DesignPattern_12_Decorator
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "StringDisplay.h"
#import "SideBorder.h"
#import "FullBorder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Display *b1 = [[StringDisplay alloc] initWithString:@"hello, world"];
        Display *b2 = [[SideBorder alloc] initWithDisplay:b1 character:@"#"];
        Display *b3 = [[FullBorder alloc] initWithDisplay:b2];
        [b1 show];
        [b2 show];
        [b3 show];
        Display *b4 = [[SideBorder alloc] initWithDisplay:
                       [[FullBorder alloc] initWithDisplay:
                        [[FullBorder alloc] initWithDisplay:
                         [[SideBorder alloc] initWithDisplay:
                          [[FullBorder alloc] initWithDisplay:
                           [[StringDisplay alloc] initWithString:@"hi"]] character:@"*"]]] character:@"/"];
        [b4 show];
    }
    return 0;
}
