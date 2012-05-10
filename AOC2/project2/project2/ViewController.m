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

////// Calculator Actions //////

-(IBAction)addButton:(id)sender
{
    firstValue = [inputField.text intValue];
    inputField.text = @"";
}
-(IBAction)equalsButton:(id)sender
{
    secondValue = [inputField.text intValue];
    int combine = firstValue + secondValue;
    NSString *combineToString = [NSString stringWithFormat:@"%d", combine];
    inputField.text = combineToString;
}
-(IBAction)clearButton:(id)sender
{
    firstValue = 0;
    secondValue = 0;
    inputField.text = @"";
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
        bool powerStatus = thisSwitch.on;
        if (powerStatus == false) 
        {
            for (int i = 0; i < [toDisable count]; i++) {
                [[toDisable objectAtIndex:i] setEnabled:NO];
            }
            firstValue = 0;
            secondValue = 0;
            inputField.text = @"";
        } else {
            for (int i = 0; i < [toDisable count]; i++) {
                [[toDisable objectAtIndex:i] setEnabled:YES];
            }
            
        }
    }
}

//////  Segmented Color Controls //////

-(IBAction)colorControl:(id)sender
{
    UISegmentedControl *thisControl = (UISegmentedControl*)sender;
    if (thisControl != nil) 
    {
        if (thisControl.selectedSegmentIndex == 0) {
            self.view.backgroundColor = [UIColor whiteColor];
        } else if (thisControl.selectedSegmentIndex == 1) {
            self.view.backgroundColor = [UIColor blueColor];
        } else if (thisControl.selectedSegmentIndex == 2) {
            self.view.backgroundColor = [UIColor greenColor];
        }
    }
}

//////  Second View Controller //////

-(IBAction)onClick:(id)sender
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (secondView != nil) 
    {
        [self presentModalViewController:secondView animated:YES];
    }
}

@end
