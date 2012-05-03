//
//  TriangleClass.m
//  project1
//
//  Created by Peter Valleskey on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TriangleClass.h"

@implementation TriangleClass

-(id)init
{
    if (self = [super init])
    {
        numSides = 3;
        name = @"triangle";
    }
    return self;
}
-(NSInteger)getArea
{
    return 0.5f * 3 * 2;
}
@end
