//
//  SecondViewController.m
//  MMKVOExample
//
//  Created by Michal Moskala on 15/07/14.
//  Copyright (c) 2014 Michal Moskala. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	NSLog(@"SecondViewController - view did load ");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc{
    NSLog(@"SecondViewController - dealloc");
}



@end
