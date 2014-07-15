//
//  FirstViewController.m
//  MMKVOExample
//
//  Created by Michal Moskala on 15/07/14.
//  Copyright (c) 2014 Michal Moskala. All rights reserved.
//

#import "FirstViewController.h"
#import "Model.h"

@interface FirstViewController ()
@property (nonatomic, strong) Model *model;
@end

@implementation FirstViewController

-(void)viewDidLoad{
    [super viewDidLoad];
	NSLog(@"FirstViewController - view did load");
    [self.model addObserver:self forKeyPath:@"objects" options:NSKeyValueObservingOptionNew context:nil];
}

-(void)dealloc{
    NSLog(@"FirstViewController - dealloc");
    [self removeObserver:self forKeyPath:@"objects"];
}

-(Model*)model{
    if(!_model){
        _model = [[Model alloc] init];
    }
    return _model;
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context{
    if([keyPath isEqualToString:@"objects"]){
        NSLog(@"Objects proerty of model has changed!");
    }
}

@end
