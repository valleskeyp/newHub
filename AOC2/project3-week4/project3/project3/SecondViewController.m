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
-(IBAction)closeKey:(id)sender
{
    [self.view endEditing:true];
}
- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    textField.text = @"";
    textField.textColor = [UIColor blackColor];
}
-(void)textFieldDidEndEditing:(UITextField *)textField
{
    if (textField.text.length == 0)
    {
        textField.text = @"Enter Event.";
        textField.textColor = [UIColor lightGrayColor];
    }
}
-(void)swipeLeft
{
    if (delegate != nil)
    {
        if (eventField.text.length == 0 || [eventField.text isEqualToString:@"Enter Event."])
        {
            [pleaseEnter show];
        } else {
            NSDate *inputDate = datePicker.date;
            NSDateFormatter *dateFormat = [[NSDateFormatter alloc] init];
            [dateFormat setDateFormat:@"cccc, MMM d, hh:mm aa"];
            NSString *dateString = [dateFormat stringFromDate:inputDate];
            
            NSString *eventAndDate = [NSString stringWithFormat:@"New Event:  %@\n%@\n\n",eventField.text,dateString];
            [delegate DidEnd:eventAndDate];
            [self dismissModalViewControllerAnimated:YES];
        }
    }
    
}

- (void)viewDidLoad
{
    NSDate *Date=[NSDate date];
    pleaseEnter = [[UIAlertView alloc] initWithTitle:@"Error." message:@"Untitled event not saved." delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    datePicker.minimumDate=Date;
    
    leftSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeLeft)];
    leftSwiper.direction = UISwipeGestureRecognizerDirectionLeft;
    [swipeLeftLabel addGestureRecognizer:leftSwiper];
    
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
