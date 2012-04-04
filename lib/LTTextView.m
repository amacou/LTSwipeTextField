//
//  LTTextView.m
//  Localtalkat
//
//  Created by  on 11/09/07.
//  Copyright (c) 2011年 amacou All rights reserved.
//

#import "LTTextView.h"

@interface LTTextView()
@end

@implementation LTTextView

- (void)doSwipe:(UISwipeGestureRecognizer *)gesture{
  if (self.selectedRange.length != 0)
    return ;

  NSRange r = self.selectedRange;
  switch (gesture.direction) {
    case UISwipeGestureRecognizerDirectionRight:
    {
      if (r.location < self.text.length) {
        r.location = r.location + 1;
      }
      break;
    }
    case UISwipeGestureRecognizerDirectionLeft:
    {
      if (r.location > 0) {
        r.location = r.location - 1;
      }
      break;
    }
    default:{
    }
  }
  self.selectedRange = r;
}
@end
