//
//  ScoreController.h
//  Words 2.0
//
//  Created by Leslie Dahlberg on 20/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface ScoreController : NSWindowController
@property int numberOfKnownWords;
@property (weak) IBOutlet NSTextField *scoreLabel;
- (void)setScore:(int)score;
@end
