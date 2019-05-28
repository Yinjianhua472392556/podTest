//
//  NSMutableAttributedString+Icomoon.h
//  Gxin
//
//  Created by Cunlong Huo on 2019/3/27.
//  Copyright © 2019 Cunlong Huo. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSMutableAttributedString (Icomoon)

+(instancetype)initAttringWithString:(NSString *)string icomoonColor:(UIColor *)icomoonColor icomoonFont:(CGFloat)icomoonFont textColor:(UIColor *)textColor textFont:(CGFloat)textFont Offset:(NSUInteger)Offset;

@end

NS_ASSUME_NONNULL_END
