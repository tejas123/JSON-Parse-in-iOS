//
//  Colors.h
//  JSONParsingDemo
//
//  Created by Krupa-iMac on 15/05/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Colors : NSObject

@property (nonatomic,strong) NSString *colorName;
@property (nonatomic,strong) NSString *hexValue;

- (int)parseResponse:(NSDictionary *)receivedObjects;

@end
