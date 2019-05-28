//
//  NSString+Additional.m
//  SuperGone
//
//  Created by DD on 17/3/6.
//  Copyright © 2017年 G-mall. All rights reserved.
//

#import "NSString+Additional.h"

#define EMOJI_CODE_TO_SYMBOL(c) ((((0x808080F0 | (c & 0x3F000) >> 4) | (c & 0xFC0) << 10) | (c & 0x1C0000) << 18) | (c & 0x3F) << 24)

@implementation NSString (Additional)
//获取字体为font，宽度为width的所需要的size
-(CGSize)getSizeWithFont:(UIFont *)font Width:(CGFloat)width
{
    CGSize size;
    CGSize constrainsize = CGSizeMake(width, 2000);
    size = [self boundingRectWithSize:constrainsize options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObject:font forKey:NSFontAttributeName] context:nil].size;
    
    return size;
}

-(CGSize)getSizeWithFont:(CGFloat)font Height:(CGFloat)height
{
    CGSize size;
    CGSize constrainsize = CGSizeMake(2000, height);
    size = [self boundingRectWithSize:constrainsize options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObject:[UIFont systemFontOfSize:font] forKey:NSFontAttributeName] context:nil].size;
    
    return size;
}

-(CGSize)getSizeWithBlobFont:(CGFloat)font Height:(CGFloat)height
{
    CGSize size;
    CGSize constrainsize = CGSizeMake(2000, height);
    size = [self boundingRectWithSize:constrainsize options:NSStringDrawingUsesLineFragmentOrigin attributes:[NSDictionary dictionaryWithObject:[UIFont boldSystemFontOfSize:font] forKey:NSFontAttributeName] context:nil].size;
    
    return size;
}

+ (NSString *)emojiWithByIntCode:(int)intCode
{
    int sym = EMOJI_CODE_TO_SYMBOL(intCode);
    NSString *codeString = [[NSString alloc]initWithBytes:&sym length:sizeof(sym) encoding:NSUTF8StringEncoding];
    if (codeString == nil) {
        codeString = [NSString stringWithFormat:@"%C", (unichar)intCode];
    }
    return codeString;
}

+ (NSString *)emojiWithByStringCode:(NSString *)stringCode
{
    char *charCode = (char *)stringCode.UTF8String;
    long intCode = strtol(charCode, NULL, 16);
    return [self emojiWithByIntCode:(int)intCode];
}

/**
 *  转为emoji字符
 */
- (NSString *)emoji
{
    return [NSString emojiWithByStringCode:self];
}

@end
