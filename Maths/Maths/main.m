//
//  main.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-11.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"


//NSMutableString *getUserInput(NSString *prompt) {
//    
//    char inputChars[255];
//    NSLog(@"%@", prompt);
//    fgets(inputChars, 255, stdin);
//    return [NSString stringWithUTF8String:inputChars];
//    
//}

int main(int argc, const char * argv[]) {
    NSLog(@"MATHS!\n");
    BOOL gameOn = YES;
//Nextquestion:
    @autoreleasepool {
        
        ScoreKeeper *scores = [ScoreKeeper new];
        while(gameOn){
            AdditionQuestion *aq = [AdditionQuestion new]; // generate question
            NSLog(@"%@", aq.question);
            InputHandler *keyin = [InputHandler new]; // user input the answer
            NSString *Userkeyin = [keyin getUserInput];
            NSString *inputLowercase = [Userkeyin lowercaseString]; // for quit (both uppercass and lowercase)
            NSInteger ANS = [aq answer];
            if ([inputLowercase isEqual: @"quit"]) {
                gameOn = NO;
        } else {
            //NSLog(@"answers:%ld",ANS);
            NSInteger inputNum = [Userkeyin integerValue];
            
            if (inputNum == ANS) {
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
