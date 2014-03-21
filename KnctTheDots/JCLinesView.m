//
//  JCLineView.m
//  KnctTheDots
//
//  Created by Chae O'Keefe on 3/20/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCLinesView.h"
#import "JCLinesViewController.h"
#import "JCLine.h"

@implementation JCLinesView

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        self.backgroundColor = [UIColor purpleColor];
    }
    return self;
}

- (void) setLineSource:(JCLinesViewController *)lineSource
{
    _lineSource = lineSource;
}

- (void) drawLine:(JCLine *)line
{
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 80;
    path.lineCapStyle = kCGLineCapButt;

    [path moveToPoint:line.startPt];
    [path addLineToPoint:line.endPt];
    [path stroke];
}

- (void) drawRect:(CGRect)_
{
    NSLog(@"%@", self.lineSource.line);

    [[UIColor yellowColor] set];
    for (JCLine *drawnLine in self.lineSource.drawnLines)
    {
        [self drawLine:drawnLine];
    }

    [[UIColor blueColor] set];
    if (self.lineSource.line)
    {
        [self drawLine:self.lineSource.line];
    }
}


@end
