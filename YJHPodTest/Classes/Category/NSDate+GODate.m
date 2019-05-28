//
//  NSDate+GODate.m
//  Gone_Rebuild
//
//  Created by  on 2016/11/21.
//  Copyright © 2016年 com.xgx.gworld. All rights reserved.
//

#import "NSDate+GODate.h"

@implementation NSDate (GODate)

/**
 给定时间距离现在的时间有多长
 
 @param date 给定的时间点
 @return 特定的时间点距离现在的描述
 */



NSString * GOCompareCurrrentTime(NSDate *date){
    
    NSTimeInterval  timeInterval = [date timeIntervalSinceNow];
    timeInterval = -timeInterval;
    long temp = 0;
    NSString *result;
    if (timeInterval < 60) {
        result = [NSString stringWithFormat:@"刚刚"];
    }
    else if((temp = timeInterval/60) <60){
        result = [NSString stringWithFormat:@"%ld分前",temp];
    }
    
    else if((temp = temp/60) <24){
        result = [NSString stringWithFormat:@"%ld小时前",temp];
    }
    
    else if((temp = temp/24) <30){
        result = [NSString stringWithFormat:@"%ld天前",temp];
    }
    
    else if((temp = temp/30) <12){
        result = [NSString stringWithFormat:@"%ld月前",temp];
    }
    else{
        temp = temp/12;
        result = [NSString stringWithFormat:@"%ld年前",temp];
    }
    
    return  result;
}

NSString *GOCompareMessageTime(NSDate *date,NSDate *date1,NSDate *timeDate) {
    
    NSString *result = @"";
//    NSTimeInterval time = [date timeIntervalSince1970];
//    NSTimeInterval time1 = [date1 timeIntervalSince1970];
//    NSTimeInterval  timeInterval = time1 - time;
    
//    NSTimeInterval time = [date timeIntervalSince1970];
    NSTimeInterval time1 = [date1 timeIntervalSince1970];
    NSTimeInterval timeInter = [timeDate timeIntervalSince1970];
    NSTimeInterval  timeInterval = time1 - timeInter;
    
    if (timeInterval < 5 * 60) {
        
     result = @"";
    } else {
      
     result = GOCompareDateCurrentTime(date1);//GOCompareDateCurrentTime
    }
    return result;
}

NSString * GOCompareDateCurrentTime(NSDate *date) {
    
    NSTimeInterval  timeInterval = [date timeIntervalSinceNow];
    timeInterval = -timeInterval;
    NSString *result;
    
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    format.AMSymbol = @"上午";
    format.PMSymbol = @"下午";
    format.dateFormat = @"aaa HH:mm";
    
    if (timeInterval < 60) {
        
        result = [NSString stringWithFormat:@"刚刚"];
    } else if (timeInterval/60/60 < 24) {
        result = [NSString stringWithFormat:@"今天 %@",[format stringFromDate:date]];;
    } else if (timeInterval/60/60/24 < 2) {
        
        result = [NSString stringWithFormat:@"昨天 %@",[format stringFromDate:date]];
        
    }else if (timeInterval/60/60/24 < 8){
        
        NSDateComponents *componets = [[NSCalendar autoupdatingCurrentCalendar] components:NSCalendarUnitWeekday fromDate:date];
        switch ([componets weekday]) {
            case 1:
                result = [NSString stringWithFormat:@"星期日 %@",[format stringFromDate:date]];
                break;
            case 2:
                result = [NSString stringWithFormat:@"星期一 %@",[format stringFromDate:date]];
                break;
            case 3:
                result = [NSString stringWithFormat:@"星期二 %@",[format stringFromDate:date]];
                break;
            case 4:
                result = [NSString stringWithFormat:@"星期三 %@",[format stringFromDate:date]];
                break;
            case 5:
                result = [NSString stringWithFormat:@"星期四 %@",[format stringFromDate:date]];
                break;
            case 6:
                result = [NSString stringWithFormat:@"星期五 %@",[format stringFromDate:date]];
                break;
            case 7:
                result = [NSString stringWithFormat:@"星期六 %@",[format stringFromDate:date]];
                break;
            default:
                break;
        }
        
    } else {
        
//        NSDateFormatter *format1 = [[NSDateFormatter alloc] init];
//        format1.dateFormat = @"yyyy/MM/dd";
//        result = [format1 stringFromDate:date];
//        result = [NSString stringWithFormat:@"%@%@",result,[format stringFromDate:date]];
        
        
        
        
        
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        format.AMSymbol = @"上午";
        format.PMSymbol = @"下午";
        format.dateFormat = @"yyyy年M月dd日 aaa HH:mm";
        result = [format stringFromDate:date];
//        NSArray *array = [result componentsSeparatedByString:@"/"];
//        NSMutableArray *muarray = [NSMutableArray arrayWithArray:array];
//        NSString *secondStr = [NSString stringWithFormat:@"%@",array[1]];
//        if ([secondStr hasPrefix:@"0"]) {
//
//            secondStr = [secondStr stringByReplacingOccurrencesOfString:@"0" withString:@""];
//            [muarray replaceObjectAtIndex:1 withObject:secondStr];
//        }
//
//        NSString *thirdStr = [NSString stringWithFormat:@"%@",array[2]];
//        if ([thirdStr hasPrefix:@"0"]) {
//
//            thirdStr = [thirdStr stringByReplacingOccurrencesOfString:@"0" withString:@""];
//            [muarray replaceObjectAtIndex:2 withObject:thirdStr];
//        }
//
//        result = [muarray componentsJoinedByString:@"/"];
    }
    return result;
}

NSString * GOCompareWeChatCurrentTime(NSDate *date) {
    
    NSTimeInterval  timeInterval = [date timeIntervalSinceNow];
    timeInterval = -timeInterval;
    NSString *result;
    if (timeInterval < 60) {
        
          result = [NSString stringWithFormat:@"刚刚"];
    } else if (timeInterval/60/60 < 24) {
        
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        format.AMSymbol = @"上午";
        format.PMSymbol = @"下午";
        format.dateFormat = @"aaa HH:mm";
        result = [format stringFromDate:date];
    } else if (timeInterval/60/60/24 < 2) {
        
        result  = @"昨天";
        
    }else if (timeInterval/60/60/24 < 8){
        
        NSDateComponents *componets = [[NSCalendar autoupdatingCurrentCalendar] components:NSCalendarUnitWeekday fromDate:date];
        switch ([componets weekday]) {
            case 1:
                result = @"星期日";
                break;
            case 2:
                result = @"星期一";
                break;
            case 3:
                result = @"星期二";
                break;
            case 4:
                result = @"星期三";
                break;
            case 5:
                result = @"星期四";
                break;
            case 6:
                result = @"星期五";
                break;
            case 7:
                result = @"星期六";
                break;
            default:
                break;
        }
        
    } else {
        
        NSDateFormatter *format = [[NSDateFormatter alloc] init];
        format.dateFormat = @"yyyy/MM/dd";
        result = [format stringFromDate:date];
        NSArray *array = [result componentsSeparatedByString:@"/"];
        NSMutableArray *muarray = [NSMutableArray arrayWithArray:array];
        NSString *secondStr = [NSString stringWithFormat:@"%@",array[1]];
        if ([secondStr hasPrefix:@"0"]) {

            secondStr = [secondStr stringByReplacingOccurrencesOfString:@"0" withString:@""];
            [muarray replaceObjectAtIndex:1 withObject:secondStr];
        }

        NSString *thirdStr = [NSString stringWithFormat:@"%@",array[2]];
        if ([thirdStr hasPrefix:@"0"]) {

            thirdStr = [thirdStr stringByReplacingOccurrencesOfString:@"0" withString:@""];
            [muarray replaceObjectAtIndex:2 withObject:thirdStr];
        }

        result = [muarray componentsJoinedByString:@"/"];
        
    }
    return result;
}

/**
 今天是周几
 
 @return 今天是周几
 */
NSString * GOWeekOfToday(){
    
    NSDate *date = [NSDate date];
    NSDateComponents *componets = [[NSCalendar autoupdatingCurrentCalendar] components:NSCalendarUnitWeekday fromDate:date];
    NSString *weekDay;
    switch ([componets weekday]) {
        case 1:
            weekDay = @"星期日";
            break;
        case 2:
            weekDay = @"星期一";
            break;
        case 3:
            weekDay = @"星期二";
            break;
        case 4:
            weekDay = @"星期三";
            break;
        case 5:
            weekDay = @"星期四";
            break;
        case 6:
            weekDay = @"星期五";
            break;
        case 7:
            weekDay = @"星期六";
            break;
            
        default:
            break;
    }
    return weekDay;
}


/**
 根据时间戳转化成相应的字符串，基准是1970
 
 @param interval 时间戳
 @param format 日期格式
 @return 转换过后的字符串
 */
NSString * GODateStringWithFormatSince1970(NSTimeInterval interval, NSString *format){
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval];
    NSDateFormatter *dateFormatte = [[NSDateFormatter alloc] init];
    [dateFormatte setDateFormat:format];
    return [dateFormatte stringFromDate:date];
}

/**
 把日期转换为制定格式的字符串
 
 @param date 要进行转换的日期
 @param format 要转换成的日期格式
 @return 按照制定格式转换过后的字符串
 */
NSString * GOConvertDateToStringWithFormat(NSDate *date, NSString *format){
    
    NSString *strRet = nil;
    if (date && format)
    {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setTimeZone:[NSTimeZone defaultTimeZone]];
        
        [dateFormatter setDateFormat:format];
        strRet = [dateFormatter stringFromDate:date];
    }
    
    return strRet;
}

/**
 按照制定的格式转换成日期
 
 @param dateStr 需要进行转换的字符串
 @param format 需要转换的日期格式
 @return 按照制定格式转换过后的日期
 */
NSDate * GOConvertStringToDateWithFormat(NSString *dateStr, NSString *format){
    
    NSDate *dateRet = nil;
    if (dateStr && format && (dateStr.length == format.length))
    {
        NSDateFormatter *objDateFmt = [[NSDateFormatter alloc] init];
        [objDateFmt setTimeZone:[NSTimeZone defaultTimeZone]];
        [objDateFmt setDateFormat:format];
        dateRet = [objDateFmt dateFromString:dateStr];
    }
    
    return dateRet;
}

/**
 根据日期转换年龄
 
 @param date 出生日期
 @return 年龄
 */
NSString * GOAgeFromDate(NSDate *date){
    
    NSDate *myDate = date;
    
    
    NSDate *nowDate = [NSDate date];
    
    
    NSCalendar *calendar = [[NSCalendar alloc] initWithCalendarIdentifier:NSCalendarIdentifierGregorian];
    
    
    unsigned int unitFlags = NSCalendarUnitYear;
    
    
    NSDateComponents *comps = [calendar components:unitFlags fromDate:myDate toDate:nowDate options:0];
    
    
    NSInteger year = [comps year];
    
    
    return [NSString stringWithFormat:@"%ld",(long)year];
}
/**
 *  根据时间戳转化为日期
 *
 *  @param interval 精确到毫秒的时间戳
 *
 *  @return 日期
 */
NSString * GODateFromTimeInterval(NSTimeInterval interval){
    
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setTimeZone:[NSTimeZone systemTimeZone]];
    [format setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDate *date = [NSDate dateWithTimeIntervalSince1970:interval / 1000];
    NSString *dateStr = [format stringFromDate:date];
    return dateStr;
}

NSString * GODateFromTimeString(NSString*timeStr)
{
    NSDate  * date = [NSDate dateWithTimeIntervalSince1970:timeStr.integerValue];
    NSDateFormatter * formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:@"hh:mm MM:dd"];
    NSString * string = [formatter stringFromDate:date];
    
    NSArray * timeArray = [string componentsSeparatedByString:@" "];
    NSString * secondStr = timeArray[1];
    
    
    NSArray * detailArray = [secondStr componentsSeparatedByString:@":"];
    NSString * firstString = detailArray[0];
    NSString * secondString = detailArray[1];
    
    if (firstString.intValue < 10) {
        firstString = [firstString substringFromIndex:1];
    }
    
    if (secondString.intValue < 10) {
        secondString = [secondString substringFromIndex:1];
    }
    
    NSString * backString = [NSString stringWithFormat:@"%@ %@月%@日",timeArray[0],firstString,secondString];
    return backString;
}


NSString * GOChatDateStringFromDate(NSDate *time){
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *components = [calendar components:NSCalendarUnitMonth | NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute fromDate:time];
    
    return [NSString stringWithFormat:@"%02ld月%02ld, %02ld:%02ld", (long)components.month, (long)components.day, (long)components.hour, (long)components.minute];
}


/**
 根据日期获取星期
 
 @param date 时间
 @return 发挥的结果
 */

NSString *GOWeekWithDate(NSDate *date) {
    
    NSDateComponents *componets = [[NSCalendar autoupdatingCurrentCalendar] components:NSCalendarUnitWeekday fromDate:date];
    NSString *weekDay;
    switch ([componets weekday]) {
        case 1:
            weekDay = @"星期日";
            break;
        case 2:
            weekDay = @"星期一";
            break;
        case 3:
            weekDay = @"星期二";
            break;
        case 4:
            weekDay = @"星期三";
            break;
        case 5:
            weekDay = @"星期四";
            break;
        case 6:
            weekDay = @"星期五";
            break;
        case 7:
            weekDay = @"星期六";
            break;
            
        default:
            break;
    }
    return weekDay;
    
}

@end
