//
//  UIColor+GXColor.m
//  Gxin
//
//  Created by Cunlong Huo on 2019/3/29.
//  Copyright © 2019 Cunlong Huo. All rights reserved.
//

#import "UIColor+GXColor.h"

@implementation UIColor (GXColor)
/**
 从16进制转换为颜色
 
 @param hexValue 16进制数据
 @param alpha 透明度
 @return 转换后的颜色
 */
UIColor * GXColorFromHexValue(NSInteger hexValue, CGFloat alpha){
    
    return [UIColor colorWithRed:((float)((hexValue & 0xFF0000) >> 16))/255.0
                           green:((float)((hexValue & 0xFF00) >> 8))/255.0
                            blue:((float)(hexValue & 0xFF))/255.0 alpha:alpha];
}

UIColor * GXColorFromHex(NSInteger hexValue){
    
    return GXColorFromHexValue(hexValue, 1.0);
}

/**
 把字符串转换为颜色
 
 @param hexStr 16进制字符串
 @param alpha 透明度
 @return 转换后的颜色
 */
UIColor * GXColorWithHexStringValue(NSString *hexStr, CGFloat alpha){
    
    unsigned int red,green,blue;
    NSRange range;
    range.length = 2;
    
    if ([hexStr hasPrefix:@"#"]) {
        hexStr = [hexStr substringFromIndex:1];
    }
    
    range.location = 0;
    [[NSScanner scannerWithString:[hexStr substringWithRange:range]] scanHexInt:&red];
    
    range.location = 2;
    [[NSScanner scannerWithString:[hexStr substringWithRange:range]] scanHexInt:&green];
    
    range.location = 4;
    [[NSScanner scannerWithString:[hexStr substringWithRange:range]] scanHexInt:&blue];
    
    return [UIColor colorWithRed:(float)(red/255.0f) green:(float)(green / 255.0f) blue:(float)(blue / 255.0f) alpha:alpha];
}

UIColor * GXColorWithHexString(NSString *hexStr){
    
    return GXColorWithHexStringValue(hexStr, 1.0);
}

/**
 随机色
 
 @return 随机色
 */
UIColor * GXRandomColor(){
    
    NSInteger aRedValue = arc4random() % 255;
    NSInteger aGreenValue = arc4random() % 255;
    NSInteger aBlueValue = arc4random() % 255;
    UIColor *randColor = [UIColor colorWithRed:aRedValue / 255.0f green:aGreenValue / 255.0f blue:aBlueValue / 255.0f alpha:1.0f];
    return randColor;
}

UIColor * GXRGB(NSUInteger r, NSUInteger g, NSUInteger b){
    
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:1.0];
}

UIColor * GXRGBA(NSUInteger r, NSUInteger g, NSUInteger b, CGFloat a){
    
    return [UIColor colorWithRed:r / 255.0 green:g / 255.0 blue:b / 255.0 alpha:a];
}
@end
