//
//  NSArray+Random.m
//  Words
//
//  Created by Leslie Dahlberg on 18/03/15.
//  Copyright (c) 2015 Leslie Dahlberg. All rights reserved.
//

#import "NSArray+Random.h"

@implementation NSArray (Random)

-(id)randomObject {
    NSUInteger myCount = [self count];
    if (myCount)
        return [self objectAtIndex:arc4random_uniform(myCount)];
    else
        return nil;
}

@end