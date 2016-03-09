//
//  AppDelegate.m
//  Words 2.0
//
//  Created by Leslie Dahlberg on 19/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import "AppDelegate.h"
#import "SettingsController.h"
#import "LanguageController.h"
#import "ScoreController.h"
#import "Test.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    [_test setTesting:NO];
    [self hideTest];
    _test = [[Test alloc] init];
    [self updateSettings];
}

- (void)awakeFromNib {
}

- (void)applicationWillTerminate:(NSNotification *)aNotification {
}

- (void)updateSettings {
    [self turnOffTest];

}

- (void)setTestType:(NSString*)type {
    [_test setTestType:type];
    if ([type isEqualToString:@"Short"]) {
        [_test setNumberOfWordToTest:25];
    }else{
        [_test setNumberOfWordToTest:100];
    }
    
    [self updateSettings];
}

- (void)setLanguage:(NSString*)language {
    [_test setLanguage:language];
    [self updateSettings];
    [[self introLabel] setStringValue:@"Press START to begin!"];
}

- (IBAction)yesButton:(id)sender {
    [_test increaseNumberOfKnownWords];
    [self newWord];
    
}

- (IBAction)noButton:(id)sender {
    [self newWord];
}

- (void)newWord {
    if (_test.progress < 100) {
        [_test increaseNumberOfTestedWords];
        [[self progressBar] setDoubleValue:[_test progress]];
        [_wordLabel setStringValue:[_test word]];
    }else{
        _score = [[ScoreController alloc] initWithWindowNibName:@"ScoreController"];
        [_score setScore:[_test estimatedNumberOfKnownWords]];
        [_score showWindow:self];
        [self turnOffTest];
    }
    
    
}

-(BOOL) applicationShouldTerminateAfterLastWindowClosed:(NSApplication *)app {
    return YES;
}

- (IBAction)startButton:(id)sender {
    if(![_test testing] && [_test language] != nil){
        [self turnOnTest];
        [self newWord];
        [_score close];
        [_settings close];
        [_languages close];
    }else{
        [self turnOffTest];
        [_test resetTest];
    }
    
    
}

- (void)turnOffTest {
    [_test setTesting:NO];
    [[self startButton] setLabel:@"Start"];
    [[self startButton] setImage:[NSImage imageNamed:@"NSStatusAvailable"]];
    [self hideTest];
}

- (void)turnOnTest {
    [_test resetTest];
    [_test setTesting:YES];
    [[self startButton] setLabel:@"Stop"];
    [[self startButton] setImage:[NSImage imageNamed:@"NSStatusUnavailable"]];
    [self showTest];
}

- (IBAction)languageButton:(id)sender {
    if(!_languages){
        _languages = [[LanguageController alloc] initWithWindowNibName:@"LanguageController"];
        [_languages setParent:self];
    }
    [_languages showWindow:self];
}

- (IBAction)settingsButton:(id)sender {
    if(!_settings){
        _settings = [[SettingsController alloc] initWithWindowNibName:@"SettingsController"];
        [_settings setParent:self];
    }
    [_settings showWindow:self];
}

- (void)hideTest {
    [[self instructionLabel] setHidden:YES];
    [[self wordLabel] setHidden:YES];
    [[self yesButton] setHidden:YES];
    [[self noButton] setHidden:YES];
    [[self progressBar] setHidden:YES];
    [[self progressLabel] setHidden:YES];
    [[self introLabel] setHidden:NO];
}

- (void)showTest {
    [[self instructionLabel] setHidden:NO];
    [[self wordLabel] setHidden:NO];
    [[self yesButton] setHidden:NO];
    [[self noButton] setHidden:NO];
    [[self progressBar] setHidden:NO];
    [[self progressLabel] setHidden:NO];
    [[self introLabel] setHidden:YES];
}

@end
