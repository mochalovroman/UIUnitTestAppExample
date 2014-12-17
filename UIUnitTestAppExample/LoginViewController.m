//
//  ViewController.m
//  UIUnitTestAppExample
//
//  Created by Roman Mochalov on 17.12.14.
//  Copyright (c) 2014 Roman Mochalov. All rights reserved.
//

#import "LoginViewController.h"

static NSString *const kEmailTextFieldAL    = @"kEmailTextFieldAL";
static NSString *const kPasswordTextFieldAL = @"kPasswordTextFieldAL";
static NSString *const kLoginButtonAL = @"kLoginButtonAL";

@interface LoginViewController ()
@property (nonatomic, weak) IBOutlet UITextField *emailTextField;
@property (nonatomic, weak) IBOutlet UITextField *passwordTextField;
@property (nonatomic, weak) IBOutlet UIButton *loginButton;

-(IBAction)loginButtonSelected:(id)sender;
@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.emailTextField.accessibilityLabel = kEmailTextFieldAL;
    self.passwordTextField.accessibilityLabel = kPasswordTextFieldAL;
    self.loginButton.accessibilityLabel = kLoginButtonAL;

}

#pragma mark - actions
-(IBAction)loginButtonSelected:(id)sender
{
    
}

@end
