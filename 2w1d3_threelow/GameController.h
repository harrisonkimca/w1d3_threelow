//
//  GameController.h
//  2w1d3_threelow
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Dice;

@interface GameController : NSObject

@property (strong, nonatomic) NSMutableArray *dice;
@property (strong, nonatomic) NSMutableSet *held;
@property (nonatomic) int numberOfRolls;

- (instancetype) init;
- (void) roll;
- (void) holdDie:(Dice*)dice;
- (void) resetDice;
- (int) score;




@end
