//
//  main.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-11.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"


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
        QuestionManager *myArr = [QuestionManager new];
        NSMutableArray *timeArr = [myArr questions];
        while(gameOn){
            Question *aq = [Question new]; // generate question
            NSLog(@"%@", aq.question);
            InputHandler *keyin = [InputHandler new]; // user input the answer
            NSString *Userkeyin = [keyin getUserInput];
            NSString *inputLowercase = [Userkeyin lowercaseString]; // for quit (both uppercass and lowercase)
            NSInteger ANS = [aq answer];
            NSDate *start = [aq startTime];
            //[timeArr addObject:start];
            //NSString *index1 = [timeArr objectAtIndex:0];
            
            
            if ([inputLowercase isEqual: @"quit"]) {
                gameOn = NO;
        } else {
            //NSLog(@"answers:%ld",ANS);
            NSInteger inputNum = [Userkeyin integerValue];
            NSDate *end = [aq endTime];
            //[timeArr addObject:end];
            //NSString *index2 = [timeArr objectAtIndex:1];
            NSTimeInterval userAnswerTime = [aq answerTime];
            NSNumber *time = [NSNumber numberWithDouble:userAnswerTime];
            [timeArr addObject:time];
            NSString *index1 = [timeArr objectAtIndex:0];
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
            [myArr timeOutput];
//            NSLog(@"%@",start);
//            NSLog(@"test time: %@",index1);
//            NSLog(@"%@",end);
            //NSLog(@"%f",userAnswerTime);
            
           
  
           
            }
        }
    }
    return 0;
}
