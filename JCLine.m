//
//  JCLine.m
//  KnctTheDots
//
//  Created by Chae O'Keefe on 3/20/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCLine.h"

@implementation JCLine

- (NSString *) description
{
    return [NSString stringWithFormat:@"<Line start: %.2fx%.2f, end: %.2fx%.2f>", self.startPt.x, self.startPt.y, self.endPt.x, self.endPt.y];
}

@end
