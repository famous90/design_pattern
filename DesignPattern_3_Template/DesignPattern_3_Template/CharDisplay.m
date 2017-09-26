//
//  CharDisplay.m
//  DesignPattern_3_Template
//
//  Created by 황 규영[famous90] on 2017. 9. 26..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import "CharDisplay.h"

@interface CharDisplay ()

@property (strong) NSString *character;

@end

@implementation CharDisplay

- (instancetype)initWithCharacter:(NSString *)character
{
    self = [super init];
    if (self) {
        _character = character;
    }
    return self;
}

- (void)open
{
    NSLog(@"<<");
}

- (void)print
{
    NSLog(@"%@", self.character);
}

- (void)close
{
    NSLog(@">>");
}

@end
