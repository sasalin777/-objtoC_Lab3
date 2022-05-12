//
//  main.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-11.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

NSMutableString *getUserInput(NSString *prompt) {
    
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    return [NSString stringWithUTF8String:inputChars];
    
}

int main(int argc, const char * argv[]) {
    NSLog(@"MATHS!\n");
Nextquestion:
    @autoreleasepool {
        AdditionQuestion *aq = [[AdditionQuestion alloc]init];
        long ANS = [aq answer];

        NSLog(@"%ld * %ld = ?",aq.value1,aq.value2);
        NSString *inputString = getUserInput(@"");
    //create a while loop in main.m to prevent the app from just exiting.
        NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"\n"];
        NSString *trimmedString = [inputString stringByTrimmingCharactersInSet:set]; // remove \n
        NSString *inputLowercase = [trimmedString lowercaseString];
        while(([inputString  isEqual: @""]) == false){
            if ([inputLowercase isEqual: @"quit"]) {
            break;
        } else {
            //NSLog(@"answers:%ld",ANS);
            NSInteger inputNum = [inputString integerValue];
            //long answerL = NSSwapLong(inputNum);
            
            if ((long)inputNum == (long)ANS) {
                NSLog(@"Right!");
                goto Nextquestion;
            } else {
                NSLog(@"Wrong!");
                goto Nextquestion;
            }
            }
        }
    }
    return 0;
}
