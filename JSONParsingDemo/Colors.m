//
//  Colors.m
//  JSONParsingDemo
//
//  Created by Krupa-iMac on 15/05/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import "Colors.h"

@implementation Colors

@synthesize colorName;
@synthesize hexValue;

- (int)parseResponse:(NSDictionary *)receivedObjects
{
    colorName = [receivedObjects objectForKey:@"colorName"];
    hexValue = [receivedObjects objectForKey:@"hexValue"];
    return 0;
}

@end
