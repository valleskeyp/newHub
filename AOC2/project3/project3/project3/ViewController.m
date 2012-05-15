//
//  ViewController.m
//  project3
//
//  Created by Peter Valleskey on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)DidEnd:(NSString *)inputString
{
    [eventArray addObject:inputString];
    NSMutableString *temp = [[NSMutableString alloc] init];
    for (NSString *element in eventArray)
    {
        [temp appendString:element];
    }
    eventList.text = temp; // coming up blank, have to fix this later //////////////////
                            //  text and date string are being sent in, have to check the output of that
}

- (void)viewDidLoad
{
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
//////  Second View button //////
-(IBAction)onClick:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (secondView != nil) 
    {
        secondView.delegate = self;
        [self presentModalViewController:secondView animated:YES];
    }
}
@end
