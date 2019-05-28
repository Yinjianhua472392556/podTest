//
//  NSMutableAttributedString+Icomoon.m
//  Gxin
//
//  Created by Cunlong Huo on 2019/3/27.
//  Copyright © 2019 Cunlong Huo. All rights reserved.
//

#import "NSMutableAttributedString+Icomoon.h"

@implementation NSMutableAttributedString (Icomoon)

+(instancetype)initAttringWithString:(NSString *)string icomoonColor:(UIColor *)icomoonColor icomoonFont:(CGFloat)icomoonFont textColor:(UIColor *)textColor textFont:(CGFloat)textFont Offset:(NSUInteger)Offset{
    NSMutableAttributedString *attring = [[NSMutableAttributedString alloc] initWithString:string];
    [attring addAttribute:NSFontAttributeName value:[UIFont fontWithName:@"icomoon" size:icomoonFont] range:NSMakeRange(0, 1)];
    [attring addAttribute:NSForegroundColorAttributeName value:icomoonColor range:NSMakeRange(0, 1)];
    [attring addAttribute:NSFontAttributeName value:[UIFont systemFontOfSize:textFont] range:NSMakeRange(1, attring.length - 1)];
    [attring addAttribute:NSForegroundColorAttributeName value:textColor range:NSMakeRange(1, attring.length - 1)];
    [attring addAttribute:NSBaselineOffsetAttributeName value:@(Offset) range:NSMakeRange(1, attring.length - 1)];
    return attring;
}

@end
