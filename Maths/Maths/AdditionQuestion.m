//
//  AdditionQuestion.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-15.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion {
    super.question = [NSString stringWithFormat:@"%ld + %ld = ?", super.rightValue, super.leftValue];
    super.answer = super.leftValue + super.rightValue;
}

@end
