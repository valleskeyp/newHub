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
    IBOutletCollection(UIButton)NSArray *toDisable;
    int firstValue;
    int secondValue;
    IBOutlet UITextField *inputField;
}
-(IBAction)colorControl:(id)sender;
-(IBAction)clearButton:(id)sender;
-(IBAction)addButton:(id)sender;
-(IBAction)equalsButton:(id)sender;
-(IBAction)onSwitch:(id)sender;
-(IBAction)onClick:(id)sender;
-(IBAction)calcButton:(id)sender;


@end
