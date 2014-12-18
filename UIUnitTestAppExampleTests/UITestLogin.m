//
//  UITestLogin.m
//  UIUnitTestAppExample
//
//  Created by Roman Mochalov on 18.12.14.
//  Copyright (c) 2014 Roman Mochalov. All rights reserved.
//

#import <KIF/KIF.h>
#import <KIF/KIFUITestActor.h>
#import "LoginViewController.h"
#import "ResultLoginViewController.h"

@interface UITestLogin : XCTestCase

@end

@implementation UITestLogin

- (void)test_enterText_email
{
    [tester enterText:@"test1@test1.com" intoViewWithAccessibilityLabel:kEmailTextFieldAL];
}

- (void)test_rotate
{
    [system simulateDeviceRotationToOrientation:UIDeviceOrientationLandscapeLeft];
    [system simulateDeviceRotationToOrientation:UIDeviceOrientationPortrait];
}

//- (void)test_selectAndCutEmail
//{
//    [tester longPressViewWithAccessibilityLabel:kEmailTextFieldAL duration:2];
//    [tester tapViewWithAccessibilityLabel:@"Select All"];
//    [tester tapViewWithAccessibilityLabel:@"Cut"];
//}

//- (void)test_selectAndCutEmail_again
//{
//    [tester longPressViewWithAccessibilityLabel:kEmailTextFieldAL duration:2];
//    [tester tapViewWithAccessibilityLabel:@"Select All"];
//    [tester tapViewWithAccessibilityLabel:@"Cut"];
//}

- (void)test_enterText_password
{
    [tester enterText:@"12345" intoViewWithAccessibilityLabel:kPasswordTextFieldAL];
}

- (void)test_pressButton_login
{
    [tester tapViewWithAccessibilityLabel:kLoginButtonAL];
    [tester waitForAbsenceOfViewWithAccessibilityLabel:kResultLoginViewControllerAL];
}

@end
