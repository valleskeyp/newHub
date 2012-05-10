//
//  ViewController.m
//  project2
//
//  Created by Peter Valleskey on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController

-(IBAction)addButton:(id)sender
{
    //stf
}
-(IBAction)equalsButton:(id)sender
{
    //stf
}
-(IBAction)calcButton:(id)sender
{
    UIButton *thisButton = (UIButton*)sender;
    if (thisButton != nil) 
    {
        NSMutableString *currentInput = [[NSMutableString alloc] initWithString:inputField.text];
        [currentInput appendString:thisButton.titleLabel.text];
        inputField.text = currentInput;
    }
}
-(IBAction)onSwitch:(id)sender
{
    UISwitch *thisSwitch = (UISwitch*)sender;
    if (thisSwitch != nil) 
    {
        powerStatus = thisSwitch.on;
        if (powerStatus == false) 
        {
            NSLog(@"Turned off");
            //turn off all buttons
            
            //clear first / second variables 
            
            //clear input field
            inputField.text = @"";
        } else {
            NSLog(@"Turned on");
            //turn on all buttons
        }
    }
}
-(IBAction)onClick:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (secondView != nil) 
    {
        [self presentModalViewController:secondView animated:YES];
    }
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

@end
