//
//  SettingsController.m
//  Words 2.0
//
//  Created by Leslie Dahlberg on 19/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import "SettingsController.h"
#import "AppDelegate.h"

@interface SettingsController ()

@end

@implementation SettingsController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}


- (IBAction)testType:(id)sender {
    [_parent setTestType:[[[self testType] selectedCell] title]];
}

@end
