//
//  Visitor.h
//  DesignPattern_13_Visitor
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@class File, Directory;

@interface Visitor : NSObject

- (void)visitWithFile:(File *)file;
- (void)visitWithDirectory:(Directory *)directory;

@end
