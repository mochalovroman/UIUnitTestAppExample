//
//  ResultLoginViewController.m
//  UIUnitTestAppExample
//
//  Created by Roman Mochalov on 17.12.14.
//  Copyright (c) 2014 Roman Mochalov. All rights reserved.
//

#import "ResultLoginViewController.h"

NSString *const kResultLoginViewControllerAL    = @"kResultLoginViewControllerAL";

@interface ResultLoginViewController ()

@end

@implementation ResultLoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.accessibilityLabel = kResultLoginViewControllerAL;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
