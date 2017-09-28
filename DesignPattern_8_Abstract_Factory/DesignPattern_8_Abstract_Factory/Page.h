//
//  Page.h
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Item;

@interface Page : NSObject

@property (readonly, strong) NSString *title;
@property (readonly, strong) NSString *author;
@property (readonly, strong) NSMutableArray <Item *> *content;

- (instancetype)initWithTitle:(NSString *)title author:(NSString *)author NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (void)addItem:(Item *)item;
- (void)output;
- (NSString *)makeHTML;

@end
