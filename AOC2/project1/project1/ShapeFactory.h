//
//  ShapeFactory.h
//  project1
//
//  Created by Peter Valleskey on 5/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ShapeClass.h"

@interface ShapeFactory : NSObject

+(ShapeClass*)CreateShape:(NSInteger)type;

@end
