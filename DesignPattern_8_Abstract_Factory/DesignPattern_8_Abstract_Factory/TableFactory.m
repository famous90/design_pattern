//
//  TableFactory.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "TableFactory.h"
#import "TableLink.h"
#import "TablePage.h"
#import "TableTray.h"

@implementation TableFactory

- (Link *)createLinkWithCaption:(NSString *)caption url:(NSString *)url
{
    return [[TableLink alloc] initWithCaption:caption url:url];
}

- (Page *)createPageWithTitle:(NSString *)title author:(NSString *)author
{
    return [[TablePage alloc] initWithTitle:title author:author];
}

- (Tray *)createTrayWithCaption:(NSString *)caption
{
    return [[TableTray alloc] initWithCaption:caption];
}

@end
