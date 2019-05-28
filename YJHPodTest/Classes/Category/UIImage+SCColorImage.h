//
//  UIImage+SCColorImage.h
//  SuperCard
//
//  Created by HCL on 2017/11/20.
//  Copyright © 2017年 G-mall. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (SCColorImage)

+ (UIImage*)createImageWithColor:(UIColor*)color;

+ (UIImage *)imageWithColor:(UIColor *)color size:(CGSize)size;

+ (UIImage *)createQRImageWithString:(NSString *)qrString size:(CGFloat)size;

+ (UIImage *)getImageWithPath:(NSString *)path;

- (UIImage *)fixOrientationImage;
@end
