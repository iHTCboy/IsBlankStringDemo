//
//  NSString+Utility.m
//  IsBlankStringDemo
//
//  Created by HTC on 2018/1/17.
//  Copyright © 2018年 HTC. All rights reserved.
//

#import "NSString+Utility.h"

@implementation NSString (Utility)


- (BOOL)isBlankString {
    NSString *string = self;
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    
    return NO;
}


+ (BOOL)isBlankString:(NSString *)str {
    NSString *string = str;
    if (string == nil || string == NULL) {
        return YES;
    }
    if ([string isKindOfClass:[NSNull class]]) {
        return YES;
    }
    if ([[string stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceCharacterSet]] length]==0) {
        return YES;
    }
    
    return NO;
}


@end
