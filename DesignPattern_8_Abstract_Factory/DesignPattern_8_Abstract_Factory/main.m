//
//  main.m
//  DesignPattern_8_Abstract_Factory
//
//  Created by gyuyoung Hwang on 2017. 9. 29..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Factory.h"
#import "Link.h"
#import "Tray.h"
#import "Page.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        
        Factory *factory = [Factory getFactoryWithClassName:@"tableFactory"];
        
        Link *joins = [factory createLinkWithCaption:@"중앙일보" url:@"http://www.joins.com"];
        Link *chosun = [factory createLinkWithCaption:@"조선일보" url:@"http://www.chosum.com"];
        
        Tray *trayNews = [factory createTrayWithCaption:@"신문"];
        [trayNews addItem:joins];
        [trayNews addItem:chosun];
        
        Page *page = [factory createPageWithTitle:@"LinkPage" author:@"영진닷컴"];
        [page addItem:trayNews];
        
        [page output];
    }
    return 0;
}
