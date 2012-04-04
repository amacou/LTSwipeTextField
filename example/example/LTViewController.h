//
//  LTViewController.h
//  example
//
//  Created by amacou on 12/04/04.
//  Copyright (c) 2012年 amacou All rights reserved.
//

#import <UIKit/UIKit.h>
#import "LTTextView.h"
#import "LTTextField.h"
@interface LTViewController : UIViewController{
  IBOutlet LTTextView *textView;
  IBOutlet LTTextField *textField;
}
@end
