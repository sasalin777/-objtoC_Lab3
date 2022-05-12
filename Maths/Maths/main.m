//
//  main.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-11.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"


NSMutableString *getUserInput(NSString *prompt) {
    
    char inputChars[255];
    NSLog(@"%@", prompt);
    fgets(inputChars, 255, stdin);
    return [NSString stringWithUTF8String:inputChars];
    
}

int main(int argc, const char * argv[]) {
    NSLog(@"MATHS!\n");
    BOOL gameOn = YES;
//Nextquestion:
    @autoreleasepool {
        
        ScoreKeeper *scores = [ScoreKeeper new];
        while(gameOn){
            AdditionQuestion *aq = [AdditionQuestion new];
            NSLog(@"%@", aq.question);
            NSString *inputString = getUserInput(@"");
            NSCharacterSet *set = [NSCharacterSet characterSetWithCharactersInString:@"\n"];
            NSString *trimmedString = [inputString stringByTrimmingCharactersInSet:set]; // remove \n
            NSString *inputLowercase = [trimmedString lowercaseString];
            long ANS = 0;
            ANS = [aq answer];
            if ([inputLowercase isEqual: @"quit"]) {
                gameOn = NO;
        } else {
            //NSLog(@"answers:%ld",ANS);
            NSInteger inputNum = [inputString integerValue];
            //long answerL = NSSwapLong(inputNum);
            
            if ((long)inputNum == (long)ANS) {
                NSLog(@"Right!");
                [scores doRight];
            // goto Nextquestion;
            } else {
                NSLog(@"Wrong!");
                [scores doWrong];
            // goto Nextquestion;
            }
            [scores score];
           
            }
        }
    }
    return 0;
}
