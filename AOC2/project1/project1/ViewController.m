//
//  ViewController.m
//  project1
//
//  Created by Peter Valleskey on 5/1/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "ShapeClass.h"
#import "SquareClass.h"
#import "TriangleClass.h"
#import "RectangleClass.h"
#import "ShapeFactory.h"

@implementation ViewController

- (void)viewDidLoad
{   
    SquareClass *square = (SquareClass*)[ShapeFactory CreateShape:0];
    int area = [square getArea];
    NSString* name = [square getName];
    NSLog(@"Shape %@, Area:%d", name, area);
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    field1 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 90.0f, 320.0f, 80.0f)];
    if (field1 != nil) 
    {
        field1.textColor = [UIColor blackColor];
        field1.text = @"Default text1";
        field1.backgroundColor = [UIColor lightGrayColor];
        field1.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:field1];
    }
    field2 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 180.0f, 320.0f, 80.0f)];
    if (field2 != nil) 
    {
        field2.textColor = [UIColor blackColor];
        field2.text = @"Default text2";
        field2.backgroundColor = [UIColor lightGrayColor];
        field2.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:field2];
    }
    field3 = [[UILabel alloc] initWithFrame:CGRectMake(0.0f, 270.0f, 320.0f, 80.0f)];
    if (field3 != nil) 
    {
        field3.textColor = [UIColor blackColor];
        field3.text = @"Default text3";
        field3.backgroundColor = [UIColor lightGrayColor];
        field3.textAlignment = UITextAlignmentCenter;
        [self.view addSubview:field3];
    }
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    
    [super viewDidUnload];
    // Release any retained subviews of the main view.
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
