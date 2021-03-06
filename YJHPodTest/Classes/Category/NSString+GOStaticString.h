//
//  NSString+GOStaticString.h
//  Gone_Rebuild
//
//  Created by  on 2016/11/19.
//  Copyright © 2016年 com.xgx.gworld. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSString (GOStaticString)

#pragma mark - 验证合法性
/**
 验证邮箱

 @param email 邮箱地址
 @return 是否是邮箱
 */
BOOL GOValidateEmail(NSString *email);

/**
 验证身份证是否合法

 @param identification 身份证号
 @return 身份证号是否合法
 */
BOOL GOValidatePIN(NSString *identification);

/**
 获取指定范围内的字符串
 
 @param str 原字符串
 @param range 截取范围
 @return 截取后的字符串
 */
NSString * GOGetSubStringWithRange(NSString *str, NSRange range);

/**
 验证手机号码是否合法

 @param mobileNum 手机号码
 @return 手机号码是否合法
 */
BOOL GOValidateMobileNumber(NSString *mobileNum);

/**
 验证手机号码前3位。。。。。
 
 @param mobileNum 手机号码
 @return 手机号码是否合法
 */
+ (NSString *) GOValidateMobileThreeNumber:(NSString *)mobileNum;


#pragma mark - 加密
/**
 MD5加密数据

 @param original 原始数据
 @return 加密过后的数据
 */
NSString * GOMD5(NSString *original);

/**
 DES加密:用CCCrypt函数加密，然后用base64编码

 @param originalTxt 初始文本
 @param key 加权值
 @return 加密后的数据
 */
NSString * GOEncryptTextWithKey(NSString *originalTxt, NSString *key);

#pragma mark - 文本计算
/**
 获取控件中每行的文字的范围

 @param label 显示文本的控件
 @return 含有每行文本的range的数组
 */
NSArray * GOGetTextRangesOfEveryLine(UILabel *label);

/**
 计算文本的高度

 @param str 字符串
 @param size 显示的区域
 @param font 字体大小
 @return 文本的高度
 */
CGFloat GOHeightForText(NSString *str, CGSize size, UIFont *font);

/**
 计算文本高度，包含行高

 @param str 待计算的文本
 @param width 显示文本的区域宽度
 @param font 字体大小
 @param spacing 行间距
 @param label 用于承载文字显示的label，最后返回的高度就是这个label的高度
 @return 计算过后的文本高度
 */
CGFloat GOCalculateTextHeightWithLineSpacing(NSString * str, CGFloat width, UIFont *font, CGFloat spacing, UILabel *label);


/**
 根据字典获取字符串

 @param dic 传入的字典
 @return 返回的字符串
 */
NSString * GOStringWithDictionary(NSDictionary*dic);


/**
 根据字符串获取字典

 @param string 字符串
 @return 字典
 */
NSDictionary * GODictionaryWithString(NSString*string);

/**
 将NSTimeInterval转换成字符串
 
 @param interval NSTimeInterval
 @return 返回字符串
 */

+(NSString *)timeIntervalToMMSSFormat:(NSTimeInterval)interval;


/**
 字符串

 @param image 图片image
 @return 字符串
 */
+(NSString *)iamgeTobase64String:(UIImage *)image;


/**
 字符串
 
 @param string 需要判断的字符
 @param length 最大长度限制
 @return 字符串
 */
BOOL SCStringHasEnoughLengthWithString(NSString *string,NSUInteger length);

@end
