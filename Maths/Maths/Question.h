//
//  AdditionQuestion.h
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Question : NSObject
@property(nonatomic,readwrite,copy) NSString *question;
@property(nonatomic,readwrite) NSInteger answer;
@property(nonatomic,readonly) NSDate *startTime;
@property(nonatomic,readonly) NSDate *endTime;
@property(nonatomic,readwrite) NSTimeInterval answerTime;
@property(nonatomic,readwrite) NSInteger rightValue;
@property(nonatomic,readwrite) NSInteger leftValue;

- (void)generateQuestion;

@end

NS_ASSUME_NONNULL_END
