//
//  SettingsController.h
//  Words 2.0
//
//  Created by Leslie Dahlberg on 19/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class AppDelegate;
@interface SettingsController : NSWindowController
@property AppDelegate *parent;
- (IBAction)testType:(id)sender;
@property (weak) IBOutlet NSMatrix *testType;
@end
