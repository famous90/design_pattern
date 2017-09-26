//
//  CharDisplay.h
//  DesignPattern_3_Template
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "AbstractDisplay.h"

@interface CharDisplay : AbstractDisplay

- (instancetype)initWithCharacter:(NSString *)character NS_DESIGNATED_INITIALIZER;
- (instancetype)init NS_UNAVAILABLE;
- (void)open;
- (void)print;
- (void)close;

@end
