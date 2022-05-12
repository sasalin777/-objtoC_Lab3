//
//  AdditionQuestion.h
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AdditionQuestion : NSObject
{
    long value1;
    long value2;
    long answer;
}

@property(nonatomic,readwrite,assign) long value1;
@property(nonatomic,readwrite,assign) long value2;


- (long ) answer;



@end

NS_ASSUME_NONNULL_END
