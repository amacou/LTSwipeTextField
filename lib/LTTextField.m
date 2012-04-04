//
//  LTTextField.m
//
//  Created by  on 11/09/07.
//  Copyright (c) 2011年 amacou All rights reserved.
//

#import "LTTextField.h"

@interface LTTextField()
@end

@implementation LTTextField
- (void)doSwipe:(UISwipeGestureRecognizer *)gesture{
  [self conformsToProtocol:@protocol(UITextInput)];
  UIView<UITextInput>* textInput = nil; 
  for (UIView *subview in self.subviews) {
    if ([subview conformsToProtocol:@protocol(UITextInput)]) {
      textInput = (UIView<UITextInput> *)subview;
      break;
    }
  }
  if (textInput == nil)
    return;

  UITextRange *r = textInput.selectedTextRange;
  if ([[textInput textInRange:r] length] > 0)
    return;
  
  int offset = 0;
  switch (gesture.direction) {
    case UISwipeGestureRecognizerDirectionRight:
    {
      offset = 1;
      break;
    }
    case UISwipeGestureRecognizerDirectionLeft:
    {
      offset = -1;
      break;
    }
    default:{
    }
  }
  if (offset!=0) {
    UITextPosition *p = [textInput positionFromPosition:r.start offset:offset];
    r = [textInput textRangeFromPosition:p toPosition:p];
    [textInput setSelectedTextRange:r];
  }
}
@end
