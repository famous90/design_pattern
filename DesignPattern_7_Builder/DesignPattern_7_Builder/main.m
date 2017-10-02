//
//  main.m
//  DesignPattern_7_Builder
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TextBuilder.h"
#import "HTMLBuilder.h"
#import "Director.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        TextBuilder *textBuilder = [[TextBuilder alloc] init];
        Director *director1 = [[Director alloc] initWithBuilder:textBuilder];
        [director1 construct];
        NSString *result = [textBuilder result];
        NSLog(@"%@", result);
        
        HTMLBuilder *htmlBuilder = [[HTMLBuilder alloc] init];
        Director *director2 = [[Director alloc] initWithBuilder:htmlBuilder];
        [director2 construct];
        NSString *filename = [htmlBuilder result];
        NSLog(@"write in %@", filename);
    }
    return 0;
}
