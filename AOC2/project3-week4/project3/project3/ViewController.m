//
//  ViewController.m
//  project3
//
//  Created by Peter Valleskey on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@implementation ViewController

-(IBAction)saveButton:(id)sender
{
    NSUserDefaults *savedEvents = [NSUserDefaults standardUserDefaults];
    if (savedEvents != nil) 
    {
        NSString *myEventList = eventList.text;
        [savedEvents setObject:myEventList forKey:@"theList"];
        
        [savedEvents synchronize];
    }
    [self alertViewFunction:@"Events were saved."];
}


-(void)DidEnd:(NSString *)inputString
{
    [eventArray addObject:inputString];
    
    NSMutableString *temp = [[NSMutableString alloc] init];
    for (NSString *element in eventArray)
    {
        [temp appendString:element];
    }
    eventList.text = temp;
}

- (void)viewDidLoad
{
    eventArray = [[NSMutableArray alloc] init];
    
    rightSwiper = [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeRight)];
    rightSwiper.direction = UISwipeGestureRecognizerDirectionRight;
    [swipeRightLabel addGestureRecognizer:rightSwiper];
    
    NSUserDefaults *savedEvents = [NSUserDefaults standardUserDefaults];
    if (savedEvents != nil) 
    {
        NSString *myEventList = [savedEvents objectForKey:@"theList"];
        eventList.text = myEventList;
        if (eventList.text.length == 0)
        {
            eventList.text = @"Add Events Below!";
        }
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
-(IBAction)clearButton:(id)sender
{
    NSUserDefaults *savedEvents = [NSUserDefaults standardUserDefaults];
    if (savedEvents != nil) 
    {
        NSString *myEventList = @"";
        [savedEvents setObject:myEventList forKey:@"theList"];
        
        [savedEvents synchronize];
    }
    eventList.text = @"Add Events Below!";
    [self alertViewFunction:@"Events cleared."];
}
-(void)alertViewFunction:(NSString*)alertString
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Success" message:alertString delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil];
    [alert show];
}
//////  Second View button //////
-(void)swipeRight
{
    SecondViewController *secondView = [[SecondViewController alloc] initWithNibName:@"SecondView" bundle:nil];
    if (secondView != nil) 
    {
        secondView.delegate = self;
        [self presentModalViewController:secondView animated:YES];
    }
}
@end
