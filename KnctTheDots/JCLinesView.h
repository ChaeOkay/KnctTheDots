//
//  JCLineView.h
//  KnctTheDots
//
//  Created by Chae O'Keefe on 3/20/14.
//  Copyright (c) 2014 ChaeOkay. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "JCLineSource.h"

@class JCLinesViewController;

@interface JCLinesView : UIView

@property (nonatomic, weak) id<JCLineSource> lineSource;

@end
