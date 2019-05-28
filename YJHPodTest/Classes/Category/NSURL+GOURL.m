//
//  NSURL+GOURL.m
//  SuperGone
//
//  Created by  on 2017/6/19.
//  Copyright © 2017年 G-mall. All rights reserved.
//

#import "NSURL+GOURL.h"

@implementation NSURL (GOURL)

+ (NSURL *)imageUrl:(NSString *)urlString size:(CGSize)size {
    
    int scale = [UIScreen mainScreen].scale;
    NSString *avatarString = [NSString stringWithFormat:@"%@?op=imageMogr2&thumbnail=%dx%d", urlString, (int)(size.width * scale), (int)(size.height * scale)];
    NSURL *url = [NSURL URLWithString:[avatarString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLQueryAllowedCharacterSet]]];
    
    return url;
}

@end
