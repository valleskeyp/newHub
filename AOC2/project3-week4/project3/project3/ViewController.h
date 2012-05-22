//
//  ViewController.h
//  project3
//
//  Created by Peter Valleskey on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SecondViewController.h"

@interface ViewController : UIViewController <SecondViewDelegate>
{
    IBOutlet UITextView *eventList;
    NSMutableArray *eventArray;
}
-(IBAction)onClick:(id)sender;

@end
