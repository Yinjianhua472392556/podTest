//
//  UIView+SCYJHCommon.h
//  SuperCard
//
//  Created by 陈伟光 on 2019/3/28.
//  Copyright © 2019 G-mall. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIView (SCYJHCommon)
//设置UIView的cornerRadius相关方法

- (void)doBorderWidth:(CGFloat)width color:(UIColor *)color cornerRadius:(CGFloat)cornerRadius;

- (void)doCircleFrameWithBorderColor:(UIColor *)borderColor;

- (void)cornerRadiusWithUIRectCorner:(UIRectCorner)corner value:(NSInteger)value;

+ (UIViewAnimationOptions)animationOptionsForCurve:(UIViewAnimationCurve)curve;

@end

NS_ASSUME_NONNULL_END
