//
//  LanguageController.m
//  Words 2.0
//
//  Created by Leslie Dahlberg on 19/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import "LanguageController.h"
#import "AppDelegate.h"

@interface LanguageController ()

@end

@implementation LanguageController

- (void)windowDidLoad {
    [super windowDidLoad];
    
    // Implement this method to handle any initialization after your window controller's window has been loaded from its nib file.
}


- (IBAction)setLanguageToRussian:(id)sender {
    [_parent setLanguage:@"Russian"];
    [self removeSelectItem];
}

- (IBAction)setLanguageToEnglish:(id)sender {
    [_parent setLanguage:@"English"];
    [self removeSelectItem];

}

- (void)removeSelectItem {
    [[self selectLanguageItem] setHidden:YES];
    [[self lineItem] setHidden:YES];
}

@end

