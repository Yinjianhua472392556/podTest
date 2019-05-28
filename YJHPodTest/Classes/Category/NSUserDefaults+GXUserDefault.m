//
//  NSUserDefaults+GXUserDefault.m
//  Gxin
//
//  Created by Cunlong Huo on 2019/5/7.
//  Copyright © 2019 Cunlong Huo. All rights reserved.
//

#import "NSUserDefaults+GXUserDefault.h"

@implementation NSUserDefaults (GXUserDefault)
+ (void)setObject:(id)object key:(NSString *)key {
    
    //所有的存储都是以data的形式进行的
    NSData *data;
    if ([object isKindOfClass:[NSString class]]) {
        NSString *string = (NSString *)object;
        data = [string dataUsingEncoding:NSUTF8StringEncoding];
    } else if ([object isKindOfClass:[NSDictionary class]]) {
        data = [NSJSONSerialization dataWithJSONObject:(NSDictionary *)object options:NSJSONWritingPrettyPrinted error:nil];
    } else if ([object isKindOfClass:[NSData class]]) {
        data = (NSData *)object;
    }
    if (data) {
        
        [[NSUserDefaults standardUserDefaults] setObject:data forKey:key];
        [[NSUserDefaults standardUserDefaults] synchronize];
    }
}

+(NSDictionary *)dictionaryFromKey:(NSString *)key {
    
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (data) {
        NSDictionary *dic = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingMutableContainers error:nil];
        if (dic.count) {
            return dic;
        } else {
            return @{};
        }
    } else {
        return @{};
    }
}

+(NSString *)stringFromKey:(NSString *)key {
    
    NSData *data = [[NSUserDefaults standardUserDefaults] objectForKey:key];
    if (data) {
        NSString *string = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
        return string;
    } else {
        return @"";
    }
}
@end
