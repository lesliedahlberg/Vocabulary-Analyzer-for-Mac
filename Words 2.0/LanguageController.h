//
//  LanguageController.h
//  Words 2.0
//
//  Created by Leslie Dahlberg on 19/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class AppDelegate;
@interface LanguageController : NSWindowController
@property (weak) IBOutlet NSMenuItem *lineItem;
@property (weak) IBOutlet NSMenuItem *selectLanguageItem;
@property AppDelegate *parent;
- (IBAction)setLanguageToRussian:(id)sender;
- (IBAction)setLanguageToEnglish:(id)sender;

@end
