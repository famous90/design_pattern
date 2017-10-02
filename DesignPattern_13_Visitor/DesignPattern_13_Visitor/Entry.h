//
//  Entry.h
//  DesignPattern_13_Visitor
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Visitor;

@protocol Element <NSObject>

- (void)acceptWithVisitor:(Visitor *)visitor;

@end

@interface Entry : NSObject <Element>

- (NSString *)name;
- (NSInteger)size;
- (Entry *)addEntry:(Entry *)entry;

@end
