//
//  NSUserDefaults+GXUserDefault.h
//  Gxin
//
//  Created by Cunlong Huo on 2019/5/7.
//  Copyright © 2019 Cunlong Huo. All rights reserved.
//



NS_ASSUME_NONNULL_BEGIN

@interface NSUserDefaults (GXUserDefault)

/**
 存储数据

 @param object 要储存的数据
 @param key key
 */
+ (void)setObject:(id)object key:(NSString *)key;

/**
 获取数据

 @param key key
 @return 返回的字典
 */
+(NSDictionary *)dictionaryFromKey:(NSString *)key;

/**
 获取string

 @param key key
 @return 返回的string
 */
+(NSString *)stringFromKey:(NSString *)key;
@end

NS_ASSUME_NONNULL_END
