//
//  InputHandler.m
//  2w1d3_threelow
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

- (NSString*) inputForPrompt: (NSString*)promptString
{
    NSLog(@"%@", promptString);
    
    char userChar [255];
    fgets(userChar, 255, stdin);
    NSString *inputString = [[NSString stringWithUTF8String:userChar] stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
    return inputString;
}

@end
