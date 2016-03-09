//
//  Test.h
//  Words 2.0
//
//  Created by Leslie Dahlberg on 19/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Test : NSObject
@property NSString *testType;
@property NSString *language;
@property BOOL testing;
@property int numberOfWordToTest;
@property int numberOfTestedWords;
@property int numberOfKnownWords;
@property NSArray *frequencyListRussian;
@property NSArray *frequencyListEnglish;
- (void)resetTest;
- (void)increaseNumberOfKnownWords;
- (void)increaseNumberOfTestedWords;
- (int)estimatedNumberOfKnownWords;
- (float)progress;
- (id)word;
@end
