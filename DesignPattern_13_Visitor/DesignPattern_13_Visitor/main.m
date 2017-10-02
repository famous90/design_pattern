//
//  main.m
//  DesignPattern_13_Visitor
//
//  Created by gyuyoung Hwang on 2017. 10. 2..
//  Copyright © 2017년 famous90. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Directory.h"
#import "File.h"
#import "ListVisitor.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Making root entries....");
        Directory *rootDir = [[Directory alloc] initWithName:@"root"];
        Directory *binDir = [[Directory alloc] initWithName:@"bin"];
        Directory *tmpDir = [[Directory alloc] initWithName:@"tmp"];
        Directory *usrDir = [[Directory alloc] initWithName:@"usr"];
        [rootDir addEntry:binDir];
        [rootDir addEntry:tmpDir];
        [rootDir addEntry:usrDir];
        [binDir addEntry:[[File alloc] initWithName:@"vi" size:10000]];
        [binDir addEntry:[[File alloc] initWithName:@"latex" size:20000]];
        [rootDir acceptWithVisitor:[[ListVisitor alloc] init]];
        
        NSLog(@"");
        NSLog(@"Making user entries....");
        Directory *kim = [[Directory alloc] initWithName:@"Kim"];
        Directory *lee = [[Directory alloc] initWithName:@"Lee"];
        Directory *park = [[Directory alloc] initWithName:@"Park"];
        [usrDir addEntry:kim];
        [usrDir addEntry:lee];
        [usrDir addEntry:park];
        [kim addEntry:[[File alloc] initWithName:@"diary.html" size:100]];
        [kim addEntry:[[File alloc] initWithName:@"Composite.h" size:200]];
        [lee addEntry:[[File alloc] initWithName:@"memo.tex" size:300]];
        [lee addEntry:[[File alloc] initWithName:@"game.doc" size:400]];
        [lee addEntry:[[File alloc] initWithName:@"junk.mail" size:500]];
        [rootDir acceptWithVisitor:[[ListVisitor alloc] init]];
    }
    return 0;
}
