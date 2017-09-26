//
//  AbstractDisplay.h
//  DesignPattern_3_Template
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AbstractDisplay : NSObject

- (instancetype)init NS_DESIGNATED_INITIALIZER;
- (void)open;
- (void)print;
- (void)close;
- (void)display;    

@end
