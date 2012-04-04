//
//  LTViewController.m
//  example
//
//  Created by amacou on 12/04/04.
//  Copyright (c) 2012年 amacou All rights reserved.
//

#import "LTViewController.h"

@interface LTViewController ()

@end

@implementation LTViewController

- (void)viewDidLoad
{
  [super viewDidLoad];
  UISwipeGestureRecognizer *textFieldGestureR = [[UISwipeGestureRecognizer alloc] initWithTarget:textField action:@selector(doSwipe:)];
  textFieldGestureR.direction = UISwipeGestureRecognizerDirectionRight;
  UISwipeGestureRecognizer *textFieldGestureL = [[UISwipeGestureRecognizer alloc] initWithTarget:textField action:@selector(doSwipe:)];
  textFieldGestureL.direction = UISwipeGestureRecognizerDirectionLeft;
  UISwipeGestureRecognizer *textViewGestureR = [[UISwipeGestureRecognizer alloc] initWithTarget:textView action:@selector(doSwipe:)];
  textViewGestureR.direction = UISwipeGestureRecognizerDirectionRight;
  UISwipeGestureRecognizer *textViewGestureL = [[UISwipeGestureRecognizer alloc] initWithTarget:textView action:@selector(doSwipe:)];
  textViewGestureL.direction = UISwipeGestureRecognizerDirectionLeft;
  
  [textField addGestureRecognizer:textFieldGestureR];
  [textField addGestureRecognizer:textFieldGestureL];
  [textView addGestureRecognizer:textViewGestureR];
  [textView addGestureRecognizer:textViewGestureL];
  
}

- (void)viewDidUnload
{
    [super viewDidUnload];

}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
  return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

@end
