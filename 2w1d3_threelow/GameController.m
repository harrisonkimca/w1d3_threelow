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
    [self.dice removeAllObjects];
    for (int i = 0; i < kMAX_DICE - self.held.count; i++)
    {
        Dice *singleDice = [[Dice alloc]init];
        [self.dice addObject:singleDice];
    }
    NSLog(@"%@", self);
}

- (NSString*)description
{
    NSString *description = @"Here is your roll\n";
    for (Dice *dice in self.dice)
    {
        description = [description stringByAppendingString:[NSString stringWithFormat:@"%@\n", dice.face]];
    }
    return description;
}

@end
