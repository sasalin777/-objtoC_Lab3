//
//  QuestionManager.h
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-15.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionManager : NSObject
@property NSMutableArray *questions;
@property (nonatomic, readwrite) NSNumber *sum;
@property (nonatomic, readwrite) NSNumber *ave;


- (void) timeOutput;
@end



NS_ASSUME_NONNULL_END
