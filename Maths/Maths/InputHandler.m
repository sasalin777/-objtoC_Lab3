//
//  InputHandler.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-12.
//

#import "InputHandler.h"

@implementation InputHandler
- (instancetype)init
{
    self = [super init];
    if (self) {
  
    }
    return self;
}


- (NSString *) getUserInput {
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    //NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"\n"];
    //NSString *trimmedString = [inputChars stringByTrimmingCharactersInSet:set];
    NSString *userInput = [[NSString stringWithCString: inputChars encoding:NSASCIIStringEncoding]stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return userInput;
}

@end
