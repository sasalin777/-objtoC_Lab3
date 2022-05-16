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
        _rightValue = arc4random_uniform(100);
        _leftValue = arc4random_uniform(100);
        _question = [NSString stringWithFormat:@"%ld + %ld = ?", _rightValue, _leftValue];
        _answer = _rightValue + _leftValue;
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

- (void) generateQuestion {
    
}



@end
