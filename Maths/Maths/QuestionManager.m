//
//  QuestionManager.m
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-15.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager
- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
        _sum = 0;
        _ave = 0;
    }
    return self;
}

- (void) timeOutput {
    _sum = [_questions valueForKeyPath:@"@sum.self"];
    _ave = [_questions valueForKeyPath:@"@avg.self"];

    NSLog(@"total time : %@s average time : %@s",_sum,_ave);
}

//NSArray *numbers = @[@1, @5.2, @9.9, @3, @0];
//NSNumber *count = [numbers valueForKeyPath:@"@count.intValue"];
//NSNumber *avg = [numbers valueForKeyPath:@"@avg.floatValue"];
//NSNumber *max = [numbers valueForKeyPath:@"@max.floatValue"];
//NSNumber *min = [numbers valueForKeyPath:@"@min.floatValue"];
//NSNumber *sum = [numbers valueForKeyPath:@"@sum.floatValue"];


@end

