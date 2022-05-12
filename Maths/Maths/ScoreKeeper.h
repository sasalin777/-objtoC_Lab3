//
//  ScoreKeeper.h
//  Maths
//
//  Created by Li Tzu Lin on 2022-05-12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface ScoreKeeper : NSObject



@property (nonatomic, readwrite) NSUInteger rightCounts;
@property (nonatomic, readwrite) NSUInteger wrongCounts;


- (void) doRight;
- (void) doWrong;
- (void) score;
 


@end

NS_ASSUME_NONNULL_END
