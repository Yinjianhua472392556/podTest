//
//  NSString+Additional.h
//  SuperGone
//
//  Created by DD on 17/3/6.
//  Copyright © 2017年 G-mall. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface NSString (Additional)
-(CGSize)getSizeWithFont:(UIFont *)font Width:(CGFloat)width;
-(CGSize)getSizeWithFont:(CGFloat)font Height:(CGFloat)height;
-(CGSize)getSizeWithBlobFont:(CGFloat)font Height:(CGFloat)height;
/**
 *  转为emoji字符
 */
- (NSString *)emoji;

@end
