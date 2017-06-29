//
//  InputHandler.h
//  2w1d3_threelow
//
//  Created by Seantastic31 on 28/06/2017.
//  Copyright © 2017 Seantastic31. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface InputHandler : NSObject

@property (strong, nonatomic) NSMutableArray *commands;

- (NSString*) inputForPrompt: (NSString*)promptString;

@end
