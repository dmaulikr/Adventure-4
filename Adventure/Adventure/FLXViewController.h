//
//  FLXViewController.h
//  Adventure
//
//  Created by Administrator on 3/11/14.
//  Copyright (c) 2014 FileLogix. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface FLXViewController : UIViewController <UITextFieldDelegate>
@property (strong, nonatomic) IBOutlet UITextField *characterName;

- (BOOL)textFieldShouldReturn:(UITextField *)textField;

@end
