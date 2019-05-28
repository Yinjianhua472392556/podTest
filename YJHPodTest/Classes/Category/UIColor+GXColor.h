//
//  UIColor+GXColor.h
//  Gxin
//
//  Created by Cunlong Huo on 2019/3/29.
//  Copyright © 2019 Cunlong Huo. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface UIColor (GXColor)
/**
 从16进制转换为颜色,#FFFFFF->0xFFFFFF转换成16进制
 
 @param hexValue 16进制数据
 @param alpha 透明度
 @return 转换后的颜色
 */
UIColor * GXColorFromHexValue(NSInteger hexValue, CGFloat alpha);
UIColor * GXColorFromHex(NSInteger hexValue);

/**
 把字符串转换为颜色
 
 @param hexStr 16进制字符串
 @param alpha 透明度
 @return 转换后的颜色
 */
UIColor * GXColorWithHexStringValue(NSString *hexStr, CGFloat alpha);
UIColor * GXColorWithHexString(NSString *hexStr);

/**
 随机色
 
 @return 随机色
 */
UIColor * GXRandomColor(void);

/**
 转换颜色
 
 @param r 红色
 @param g 绿色
 @param b 蓝色
 @return 转换过后的颜色
 */
UIColor * GXRGB(NSUInteger r, NSUInteger g, NSUInteger b);

/**
 转换颜色
 
 @param r 红色
 @param g 绿色
 @param b 蓝色
 @param a 透明度
 @return 转换过的颜色
 */
UIColor * GXRGBA(NSUInteger r, NSUInteger g, NSUInteger b, CGFloat a);
@end

NS_ASSUME_NONNULL_END
