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
@property (nonatomic, strong) NSMutableArray *mutableDrawnLines;

@end

@implementation JCLinesViewController

- (instancetype)init
{
    self = [super init];
    if (self)
    {
        _mutableDrawnLines = [NSMutableArray new];
    }
    return self;
}

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

- (NSArray *) drawnLines
{
    return [self.mutableDrawnLines copy];
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

- (void) touchesEnded:(NSSet *)touches
            withEvent:(UIEvent *)event
{
    [self.mutableDrawnLines addObject:self.currentLine];
    self.currentLine = nil;
    [self.view setNeedsDisplay];
}

@end
