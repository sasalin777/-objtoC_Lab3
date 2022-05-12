//
//  AdditionQuestion.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-11.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init
{
    self = [super init];
    if (self) {
        _value1 = arc4random_uniform(100);
        _value2 = arc4random_uniform(100);
        }
    return self;
}

- (long) answer
{
    return _value1 * _value2;
}

@end
