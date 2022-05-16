//
//  AdditionQuestion.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-11.
//

#import "Question.h"
#import "QuestionManager.h"

@implementation Question

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSInteger value1 = arc4random_uniform(100);
        NSInteger value2 = arc4random_uniform(100);
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", value1, value2];
        _answer = value1 + value2;
        _startTime = [NSDate date];
       // _endTime = [NSDate date];
        }
    return self;
}

- (NSInteger)answer {
 
 _endTime = [NSDate date];
 _answerTime = [_endTime timeIntervalSinceDate:_startTime ];
   
  return _answer;
 }



@end
