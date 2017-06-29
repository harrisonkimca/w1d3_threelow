//
//  Dice.m
//  2w1d3_threelow
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _value = arc4random_uniform(5)+1;
        _face = [Dice faces][_value-1];
    }
    return self;
}

- (NSString*)description
{
    return [NSString stringWithFormat:@"%@, %ld", self.face, self.value];
}

+ (NSArray*)faces
{
    return [[NSArray alloc]initWithObjects:@"⚀ I", @"⚁ II", @"⚂ III", @"⚃ IV", @"⚄ V", @"⚅ VI", nil];
}

@end
