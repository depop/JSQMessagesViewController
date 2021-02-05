//
//  Created by Jesse Squires
//  http://www.jessesquires.com
//
//
//  Documentation
//  http://cocoadocs.org/docsets/JSQMessagesViewController
//
//
//  GitHub
//  https://github.com/jessesquires/JSQMessagesViewController
//
//
//  License
//  Copyright (c) 2014 Jesse Squires
//  Released under an MIT license: http://opensource.org/licenses/MIT
//

#import "UIView+JSQMessages.h"

@implementation UIView (JSQMessages)

- (void)jsq_pinSubview:(UIView *)subview toEdge:(NSLayoutAttribute)attribute
{
    [self addConstraint:[NSLayoutConstraint constraintWithItem:self
                                                     attribute:attribute
                                                     relatedBy:NSLayoutRelationEqual
                                                        toItem:subview
                                                     attribute:attribute
                                                    multiplier:1.0f
                                                      constant:0.0f]];
}

- (void)jsq_pinAllEdgesOfSubview:(UIView *)subview
{
    [self jsq_pinSubview:subview toEdge:NSLayoutAttributeBottom];
    [self jsq_pinSubview:subview toEdge:NSLayoutAttributeTop];
    [self jsq_pinSubview:subview toEdge:NSLayoutAttributeLeading];
    [self jsq_pinSubview:subview toEdge:NSLayoutAttributeTrailing];
}

/// Provide touch area that has great than or equal size as minTouchArea
/// Useful when we need to increase hit area but do not want to change size and layout.
- (CGRect)touchAreaGreatThanOrEqualTo: (CGSize)minTouchArea
{
    BOOL needVerticalChanges = self.bounds.size.height < minTouchArea.height;
    BOOL needHorizontalChanges = self.bounds.size.width < minTouchArea.width;
    
    // To increase the pressure area, the vector should be negative.
    CGFloat dY = (needVerticalChanges) ? ceil(([self bounds].size.height - minTouchArea.height)/ 2) : 0.0;
    
    CGFloat dX = (needHorizontalChanges) ? ceil(([self bounds].size.width - minTouchArea.width) / 2) : 0.0;
    
    CGRect newTouchArea = CGRectInset(self.bounds, dX, dY);
    
    return newTouchArea;
}

@end
