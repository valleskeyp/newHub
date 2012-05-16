//
//  SecondViewController.m
//  project3
//
//  Created by Peter Valleskey on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"

@implementation SecondViewController
@synthesize delegate;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        delegate = nil;
    }
    return self;
}
- (void)textFieldDidEndEditing:(UITextField *)textField; 
{
    if (delegate != nil)
    {
        if (textField.text != @"") //  epic impasse, since i used DidEndEditing closing keyboard duplicates information..  and if statement can't detect an empty field for some reason.. disregarding that it duplicates anything so gotta fix that. 
        {
            NSDate *inputDate = datePicker.date;
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            [dateFormat setDateFormat:@"cccc, MMM d, hh:mm aa"];
            NSString *dateString = [dateFormat stringFromDate:inputDate];
        
            NSString *eventAndDate = [NSString stringWithFormat:@"New Event:  %@\n%@\n\n",textField.text,dateString];
            [delegate DidEnd:eventAndDate];
        }
    }
}
-(IBAction)closeKey:(id)sender
{
    [self.view endEditing:true];
}
-(IBAction)onClose:(id)sender
{
    [self dismissModalViewControllerAnimated:YES];
}

- (void)viewDidLoad
{
    NSDate *Date=[NSDate date];
    
    datePicker.minimumDate=Date;
    
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
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
