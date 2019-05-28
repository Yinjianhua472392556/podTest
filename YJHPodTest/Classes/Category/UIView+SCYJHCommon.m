//
//  UIView+SCYJHCommon.m
//  SuperCard
//
//  Created by 陈伟光 on 2019/3/28.
//  Copyright © 2019 G-mall. All rights reserved.
//

#import "UIView+SCYJHCommon.h"

@implementation UIView (SCYJHCommon)

- (void)doBorderWidth:(CGFloat)width color:(UIColor *)color cornerRadius:(CGFloat)cornerRadius {
    [self layoutIfNeeded];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = cornerRadius;
    self.layer.borderWidth = width;
    if (!color) {
        self.layer.borderColor = [UIColor clearColor].CGColor;
    }else {
        self.layer.borderColor = color.CGColor;
    }
}

- (void)doCircleFrameWithBorderColor:(UIColor *)borderColor{
    [self layoutIfNeeded];
    self.layer.masksToBounds = YES;
    self.layer.cornerRadius = self.frame.size.width/2;
    self.layer.borderWidth = 0.5;
    self.layer.borderColor = borderColor.CGColor;
}


- (void)cornerRadiusWithUIRectCorner:(UIRectCorner)corner value:(NSInteger)value{
    //    //设置UIRectCornerTopLeft UIRectCornerTopRight圆角弧度
    //    UIBezierPath *path = [UIBezierPath bezierPathWithRoundedRect:self.bounds byRoundingCorners:corner cornerRadii:CGSizeMake(value, value)];
    //    CAShapeLayer *layer = [[CAShapeLayer alloc]init];
    //    layer.frame = self.bounds;
    //    layer.path = path.CGPath;
    //    layer.backgroundColor = SCColorWithHexString(@"E6E6E6").CGColor;
    //    self.layer.mask = layer;
    
    // Create the path (with only the top-left corner rounded)
    UIBezierPath *maskPath = [UIBezierPath bezierPathWithRoundedRect:self.bounds
                                                   byRoundingCorners:corner
                                                         cornerRadii:CGSizeMake(value, value)];
    
    // Create the shape layer and set its path
    CAShapeLayer *maskLayer = [CAShapeLayer layer];
    maskLayer.frame = self.bounds;
    maskLayer.path = maskPath.CGPath;
    maskLayer.backgroundColor = SCColorWithHexString(@"E6E6E6").CGColor;
    // Set the newly created shape layer as the mask for the image view's layer
    self.layer.mask = maskLayer;
}

+ (UIViewAnimationOptions)animationOptionsForCurve:(UIViewAnimationCurve)curve
{
    switch (curve) {
        case UIViewAnimationCurveEaseInOut:
            return UIViewAnimationOptionCurveEaseInOut;
            break;
        case UIViewAnimationCurveEaseIn:
            return UIViewAnimationOptionCurveEaseIn;
            break;
        case UIViewAnimationCurveEaseOut:
            return UIViewAnimationOptionCurveEaseOut;
            break;
        case UIViewAnimationCurveLinear:
            return UIViewAnimationOptionCurveLinear;
            break;
    }
    
    return kNilOptions;
}


@end
