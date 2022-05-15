//
//  ScoreKeeper.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-12.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _rightCounts = 0;
        _wrongCounts = 0;
    }
    return self;
}

- (void) doRight {
    _rightCounts += 1;
}

- (void) doWrong {
    _wrongCounts += 1;
}

- (void) score {
    CGFloat ave = (long double)_rightCounts/(long double)(_rightCounts + _wrongCounts);
    NSLog(@"score: %ld rights, %ld wrongs --- %.0f%%",_rightCounts,_wrongCounts, ave * 100);
}


@end
