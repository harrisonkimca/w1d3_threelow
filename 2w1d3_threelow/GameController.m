//
//  GameController.m
//  2w1d3_threelow
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "GameController.h"
#import "Dice.h"

@implementation GameController

const int kMAX_DICE = 5;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _dice = [[NSMutableArray alloc]init];
        _held = [[NSMutableSet alloc]init];
    }
    return self;
}

- (void) roll
{
    // reset before every roll
    [self.dice removeAllObjects];
    // add back held dice
    for (Dice *dice in self.held)
    {
        [self.dice addObject:dice];
    }
    // roll as many dice that are not held (specific dice do not matter)
    for (int i = 0; i < kMAX_DICE - self.held.count; i++)
    {
        Dice *singleDice = [[Dice alloc]init];
        [self.dice addObject:singleDice];
    }
    NSLog(@"%@", self);
}

- (void)holdDie:(Dice*)dice
{
    [self.held addObject:dice];
    //NSLog(@"%@", self);
}

- (void)resetDice
{
    [self.dice removeAllObjects];
}

- (int)score
{
    int score = 0;
    for (Dice *dice in self.held)
    {
        if(dice.value != 3)
        {
            score += dice.value;
        }
    }
    return score;
}

- (NSString*)description
{
    // description for roll
    NSString *description = @"Here is your roll\n";
    
    // description for dice/held
    for (Dice *dice in self.dice)
    {
        if ([self.held containsObject:dice])
        {
            description = [description stringByAppendingString:[NSString stringWithFormat:@"[%@]\n", dice.face]];
        }
        else
        {
            description = [description stringByAppendingString:[NSString stringWithFormat:@"%@\n", dice.face]];
        }
    }
    
    // description for score
    
    return description;
}



@end
