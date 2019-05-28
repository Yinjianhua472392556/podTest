//
//  NSDate+GODate.h
//  Gone_Rebuild
//
//  Created by  on 2016/11/21.
//  Copyright © 2016年 com.xgx.gworld. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (GODate)
/**
 给定时间距离现在的时间有多长
 
 @param date 给定的时间点
 @return 特定的时间点距离现在的描述
 */
NSString * GOCompareCurrrentTime(NSDate *date);

/**
 今天是周几
 
 @return 今天是周几
 */
NSString * GOWeekOfToday(void);

/**
 根据时间戳转化成相应的字符串，基准是1970
 
 @param interval 时间戳
 @param format 日期格式
 @return 转换过后的字符串
 */
NSString * GODateStringWithFormatSince1970(NSTimeInterval interval, NSString *format);

/**
 把日期转换为制定格式的字符串

 @param date 要进行转换的日期
 @param format 要转换成的日期格式
 @return 按照制定格式转换过后的字符串
 */
NSString * GOConvertDateToStringWithFormat(NSDate *date, NSString *format);

/**
 按照制定的格式转换成日期

 @param dateStr 需要进行转换的字符串
 @param format 需要转换的日期格式
 @return 按照制定格式转换过后的日期
 */
NSDate * GOConvertStringToDateWithFormat(NSString *dateStr, NSString *format);

/**
 根据日期转换年龄

 @param date 出生日期
 @return 年龄
 */
NSString * GOAgeFromDate(NSDate *date);
/**
 *  根据时间戳转化为日期
 *
 *  @param interval 精确到毫秒的时间戳
 *
 *  @return 日期
 */
NSString * GODateFromTimeInterval(NSTimeInterval interval);

NSString * GODateFromTimeString(NSString*timeStr);

/**
 把日期转换成聊天所需的格式

 @param time 日期字符串
 @return 日期
 */
NSString * GOChatDateStringFromDate(NSDate *time);


/**
 将日期转成微信的时间样式

 @param date 日期
 @return 返回字符串
 */
NSString * GOCompareWeChatCurrentTime(NSDate *date);

NSString * GOCompareDateCurrentTime(NSDate *date);

/**
 聊天界面时间判断

 @param date 上一个时间
 @param date1 下一个时间
 @return 发挥的结果
 */
NSString *GOCompareMessageTime(NSDate *date,NSDate *date1,NSDate *timeDate);

/**
 根据日期获取星期
 
 @param date 时间
 @return 发挥的结果
 */

NSString *GOWeekWithDate(NSDate *date);
@end
