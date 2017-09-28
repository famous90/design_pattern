//
//  Tray.h
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "Item.h"

@interface Tray : Item

@property (readonly, strong) NSMutableArray <Item *> *tray;

- (void)addItem:(Item *)item;

@end
