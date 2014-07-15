//
//  Model.m
//  MMKVOExample
//
//  Created by Michal Moskala on 15/07/14.
//  Copyright (c) 2014 Michal Moskala. All rights reserved.
//

#import "Model.h"

@implementation Model
-(id)init{
    self = [super init];
    if(self){
        [self performSelector:@selector(testFunction) withObject:nil afterDelay:2.0f];
    }
    return self;
}

-(void)testFunction{
    self.objects = [NSArray array];
}
@end
