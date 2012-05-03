//
//  ShapeFactory.m
//  project1
//
//  Created by Peter Valleskey on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ShapeFactory.h"
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"
#import "RectangleClass.h"

@implementation ShapeFactory

+(ShapeClass*)CreateShape:(NSInteger)type
{
    switch (type) 
    {
        case 0:
            return [[SquareClass alloc] init];
            break;
        case 1:
            return [[TriangleClass alloc] init];
            break;
        case 2:
            return [[RectangleClass alloc] init];
            break;
        default:
            NSLog(@"There was an invalid switch type.");
            break;
    }
    return nil;
}

@end
