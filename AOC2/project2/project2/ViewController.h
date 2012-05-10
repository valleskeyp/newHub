//
//  ViewController.h
//  project2
//
//  Created by Peter Valleskey on 5/8/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    IBOutlet UITextField *inputField;
    bool powerStatus;
}
-(IBAction)addButton:(id)sender;
-(IBAction)equalsButton:(id)sender;
-(IBAction)onSwitch:(id)sender;
-(IBAction)onClick:(id)sender;
-(IBAction)calcButton:(id)sender;


@end
