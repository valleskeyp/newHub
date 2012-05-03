//
//  SquareClass.m
//  project1
//
//  Created by Peter Valleskey on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SquareClass.h"

@implementation SquareClass

-(id)init
{
    if (self = [super init])
    {
        numSides = 4;
        name = @"square";
    }
    return self;
}
-(NSInteger)getArea
{
    return 4 * 4;
}
@end
