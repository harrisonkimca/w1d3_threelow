//
//  main.m
//  2w1d3_threelow
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InputHandler.h"
#import "GameController.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        
        InputHandler *input = [[InputHandler alloc]init];
        // arrays for dice and held dice in game controller (outside game loop)
        GameController *gameController = [[GameController alloc]init];
        
        
        while (gameOn)
        {
            NSString *cmd = [input inputForPrompt:@"roll or quit?"];
            
            // escape condition
            if ([cmd isEqualToString:@"quit"])
            {
                gameOn = NO;
                NSLog(@"See you next time");
                break;
            }
            
            // game condition (user input = roll)
            else if ([cmd isEqualToString:@"roll"])
            {
                // roll is always dice minus held dice
                [gameController roll];
                
                
                // hold loop
                BOOL holdLoop = YES;
                
                do
                {
                    // create hold array from user input
                    NSArray *hold = [[input inputForPrompt:@"Pick dice to hold/unhold"]componentsSeparatedByCharactersInSet:[NSCharacterSet whitespaceCharacterSet]];
                    
                    // check to make sure selection does not go beyond range of array to crash program
                    for (NSString *index in hold)
                    {
                        int i = [index intValue] -1;
                        if (i < [gameController.dice count])
                        {
                            [gameController holdDie:gameController.dice[i]];
                            holdLoop = NO;
                        }
                        else
                        {
                            NSLog(@"You must select at least one die between 1-5");
                            holdLoop = YES;
                            break;
                        }
                    }
                } // end hold loop
                while (holdLoop);
            } // end roll loop
            
            
            
            
            else
            {
                NSLog(@"Not a valid response");
            }
            
            
        } // end main while game loop
        
        
        
    }
    return 0;
}
