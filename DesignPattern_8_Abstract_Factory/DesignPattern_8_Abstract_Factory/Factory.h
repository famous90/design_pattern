//
//  Factory.h
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Link, Tray, Page;

@interface Factory : NSObject

+ (instancetype)getFactoryWithClassName:(NSString *)className;
- (Link *)createLinkWithCaption:(NSString *)caption url:(NSString *)url;
- (Tray *)createTrayWithCaption:(NSString *)caption;
- (Page *)createPageWithTitle:(NSString *)title author:(NSString *)author;


@end
