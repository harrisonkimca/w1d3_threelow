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
        GameController *gameController = [[GameController alloc]init];
        
        while (gameOn)
        {
            NSString *cmd = [input inputForPrompt:@"roll or quit?"];
            
            if ([cmd isEqualToString:@"quit"])
            {
                gameOn = NO;
                NSLog(@"See you next time");
                break;
            }
            
            if ([cmd isEqualToString:@"roll"])
            {
                [gameController roll];
            } // roll loop
            else
            {
                NSLog(@"Not a valid response");
            }
            
            
        } // main while loop
        
        
        
    }
    return 0;
}
