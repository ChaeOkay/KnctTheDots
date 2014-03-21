//
//  JCLineSource.h
//  KnctTheDots
//
//  Created by Chae O'Keefe on 3/20/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JCLine;

@protocol JCLineSource <NSObject>

- (JCLine *) line;
- (NSArray *) drawnLines;

@end
