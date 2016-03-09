//
//  Test.m
//  Words 2.0
//
//  Created by Leslie Dahlberg on 19/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import "Test.h"
#import "NSArray+Random.h"

@implementation Test
- (id)init {
    self = [super init];
    if (self) {
        _language = nil;
        _testType = @"Short";
        [self resetTest];
        [self setFrequencyListRussian:[[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"RussianDictionary" ofType:@"txt"] encoding:NSUTF8StringEncoding error:NULL] componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]]];
        [self setFrequencyListEnglish:[[NSString stringWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"EnglishDictionary" ofType:@"txt"] encoding:NSUTF8StringEncoding error:NULL] componentsSeparatedByCharactersInSet:[NSCharacterSet newlineCharacterSet]]];
        [self setNumberOfWordToTest:25];
    }
    return self;
}

-(void)increaseNumberOfKnownWords{
    [self setNumberOfKnownWords:[self numberOfKnownWords]+1];
};
-(void)increaseNumberOfTestedWords{
    [self setNumberOfTestedWords:[self numberOfTestedWords]+1];
};
-(int)estimatedNumberOfKnownWords{
    return [self numberOfKnownWords]*10000/[self numberOfTestedWords];
};
-(float)progress{
    return [self numberOfTestedWords]*100/[self numberOfWordToTest];
};
-(id)word{
    if([_language isEqualToString:@"Russian"]){
        return [[self frequencyListRussian] randomObject];
    }else if([_language isEqualToString:@"English"]){
        return [[self frequencyListEnglish] randomObject];
    }
    return nil;
};
- (void)resetTest {
    [self setNumberOfKnownWords:0];
    [self setNumberOfTestedWords:0];
    _testing = NO;
}
@end
