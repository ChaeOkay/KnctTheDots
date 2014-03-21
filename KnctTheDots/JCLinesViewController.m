//
//  JCAppViewController.m
//  KnctTheDots
//
//  Created by Chae O'Keefe on 3/20/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import "JCLinesViewController.h"
#import "JCLinesView.h"
#import "JCLine.h"

@interface JCLinesViewController ()

@property (nonatomic, strong) JCLine *currentLine;

@end

@implementation JCLinesViewController

- (void) loadView
{
    JCLinesView *view = [JCLinesView new];
    self.view = view;
    [view setLineSource:self];
}

- (JCLine *) line
{
    return self.currentLine;
}

- (void) touchesBegan:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    UITouch *firstTouch = [touches anyObject];
    CGPoint location = [firstTouch locationInView:self.view];

    self.currentLine = [JCLine new];
    self.currentLine.startPt = location;
    self.currentLine.endPt   = location;

    [self.view setNeedsDisplay]; // This causes LinesView to be redrawn
}

- (void) touchesMoved:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    UITouch *nextTouch = [touches anyObject];
    CGPoint location = [nextTouch locationInView:self.view];

    self.currentLine.endPt = location;

    [self.view setNeedsDisplay];
}

@end
