//
//  SecondViewController.h
//  project3
//
//  Created by Peter Valleskey on 5/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol SecondViewDelegate <NSObject>
@required
-(void)DidEnd:(NSString*)inputString;

@end

@interface SecondViewController : UIViewController <UITextFieldDelegate>
{
    UIAlertView *pleaseEnter;
    id<SecondViewDelegate> delegate;
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UITextField *eventField;
    IBOutlet UILabel *swipeLeftLabel;
    
    UISwipeGestureRecognizer *leftSwiper;
}
-(IBAction)closeKey:(id)sender;
-(void)swipeLeft;

@property (strong) id<SecondViewDelegate> delegate;

@end
