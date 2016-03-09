//
//  AppDelegate.h
//  Words 2.0
//
//  Created by Leslie Dahlberg on 19/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class SettingsController;
@class LanguageController;
@class ScoreController;
@class Test;
@interface AppDelegate : NSObject <NSApplicationDelegate>
@property (weak) IBOutlet NSProgressIndicator *progressBar;
@property (weak) IBOutlet NSTextField *progressLabel;
@property (weak) IBOutlet NSTextField *instructionLabel;
@property (weak) IBOutlet NSTextField *wordLabel;
@property (weak) IBOutlet NSButton *yesButton;
@property (weak) IBOutlet NSButton *noButton;
@property (weak) IBOutlet NSToolbarItem *startButton;
@property BOOL testing;
@property (strong) SettingsController *settings;
@property (strong) LanguageController *languages;
@property (strong) ScoreController *score;
@property (weak) IBOutlet NSTextField *testTypeLabel;
@property (weak) IBOutlet NSTextField *languageLabel;
@property (weak) IBOutlet NSTextField *introLabel;
@property Test *test;
- (IBAction)yesButton:(id)sender;
- (IBAction)noButton:(id)sender;
- (IBAction)startButton:(id)sender;
- (IBAction)languageButton:(id)sender;
- (IBAction)settingsButton:(id)sender;
- (void)hideTest;
- (void)showTest;
- (void)updateSettings;
- (void)setTestType:(NSString*)type;
- (void)setLanguage:(NSString*)language;
@end

