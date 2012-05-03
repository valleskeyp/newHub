//
//  ShapeClass.h
//  project1
//
//  Created by Peter Valleskey on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ShapeClass : NSObject
{
@protected
    NSString *name;
    int numSides;
}

-(int)getArea;

-(int)getNumSides;
-(NSString*)getName;

@end
