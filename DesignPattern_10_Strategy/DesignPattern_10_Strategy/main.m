//
//  main.m
//  DesignPattern_10_Strategy
//
//  Created by gyuyoung Hwang on 2017. 10. 1..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Player.h"
#import "WinningStrategy.h"
#import "ProbStrategy.h"
#import "Hand.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Player *p1 = [[Player alloc] initWithName:@"boy" strategy:[[WinningStrategy alloc] init]];
        Player *p2 = [[Player alloc] initWithName:@"girl" strategy:[[ProbStrategy alloc] init]];
        
        for (int i=0; i<10000; i++) {
            Hand *nextHand1 = [p1 nextHand];
            Hand *nextHand2 = [p2 nextHand];
            if ([nextHand1 isStrongerThanHand:nextHand2]) {
                NSLog(@"Winner: %@", p1);
                NSLog(@"log");
                [p1 win];
                [p2 lose];
            } else if ([nextHand1 isWeakerThanHand:nextHand2]) {
                NSLog(@"Winner: %@", p2);
                [p2 win];
                [p1 lose];
            } else {
                NSLog(@"Even...");
                [p1 even];
                [p2 even];
            }
        }
        NSLog(@"");
        NSLog(@"Total result: ");
        NSLog(@"%@", [p1 description]);
        NSLog(@"%@", [p2 description]);
    }
    return 0;
}
