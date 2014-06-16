//
//  ViewController.m
//  JSONParsingDemo
//
//  Created by Krupa-iMac on 15/05/14.
//  Copyright (c) 2014 TheAppGuruz. All rights reserved.
//

#import "ViewController.h"
#import "Colors.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    marrAllColors = [[NSMutableArray alloc] init];
    
    [self parseJSONFile];
}

-(void)parseJSONFile
{
    NSData *data = [NSData dataWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Displaydata" ofType:@"json"]];
    
    NSDictionary *dictTemp = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSArray *arrColors = [dictTemp valueForKey:@"colorsArray"];
    
   for (int i=0; i<arrColors.count; i++) {
        Colors *colors = [[Colors alloc] init];
        [colors parseResponse:[arrColors objectAtIndex:i]];
        [marrAllColors addObject:colors];
    }
    
    [self displayAllColros];
}

-(void)displayAllColros
{
    for (int i=0; i<marrAllColors.count; i++) {
        Colors *color = [marrAllColors objectAtIndex:i];
        NSLog(@"Color : Name = %@ hexValue = %@",color.colorName,color.hexValue);
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
