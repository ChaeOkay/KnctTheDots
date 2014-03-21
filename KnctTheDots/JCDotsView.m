//
//  JCDotsView.m
//  KnctTheDots
//
//  Created by Chae O'Keefe on 3/20/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCDotsView.h"

@implementation JCDotsView

- (instancetype) initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];

    if (self)
    {
        for (int i = 0; i < 10; i++) {
            UIImage *emoji = [UIImage imageNamed:@"emoji.png"];
            UIImageView *dot = [[UIImageView alloc] initWithImage:emoji];

            int x = arc4random() % (int)frame.size.width;
            int y = arc4random() % (int)frame.size.height;
            dot.frame = CGRectMake(x, y, dot.frame.size.width, dot.frame.size.height);

            [self addSubview:dot];
        }
    }

    return self;
}

@end
