//
//  JCAppViewController.h
//  KnctTheDots
//
//  Created by Chae O'Keefe on 3/20/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import <UIKit/UIKit.h>

@class JCLine;

@interface JCLinesViewController : UIViewController

@property (nonatomic, strong) JCLine *currentLine;

- (JCLine *) line;

@end
