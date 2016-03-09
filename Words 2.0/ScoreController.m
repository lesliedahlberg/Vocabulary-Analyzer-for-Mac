//
//  ScoreController.m
//  Words 2.0
//
//  Created by Leslie Dahlberg on 20/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import "ScoreController.h"

@interface ScoreController ()

@end

@implementation ScoreController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}

- (void)awakeFromNib {
    [[self scoreLabel] setStringValue:[NSString stringWithFormat:@"You know %d words!", _numberOfKnownWords]];
}

- (void)setScore:(int)score {
    _numberOfKnownWords = score;
}

@end
