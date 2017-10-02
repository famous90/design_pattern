//
//  File.h
//  DesignPattern_13_Visitor
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Entry.h"

@interface File : Entry

- (instancetype)initWithName:(NSString *)name size:(NSInteger)size NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;

@end
