//
//  Entry.h
//  DesignPattern_11_Composite
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Entry : NSObject

- (NSString *)name;
- (NSInteger)size;
- (Entry *)addEntry:(Entry *)entry;
- (void)printList;
- (void)printListWithPrefix:(NSString *)prefix;

@end
