//
//  ACURLProtocol.m
//  HybridSDKDemo
//
//  Created by anfeng on 2018/4/21.
//  Copyright © 2018年 anfeng. All rights reserved.
//

#import "ACURLProtocol.h"
#import "ACSURLSessionConfiguration.h"

@implementation ACURLProtocol

+ (void)start {
    ACSURLSessionConfiguration *sessionConfiguration = [ACSURLSessionConfiguration defaultConfiguration];
    [NSURLProtocol registerClass:[ACURLProtocol class]];
    if (![sessionConfiguration isSwizzle]) {
        [sessionConfiguration load];
    }
}

+ (BOOL)canInitWithRequest:(NSURLRequest *)request {
    NSString *host = request.URL.host;
    if ([host containsString:@"fritz"]) {
        return YES;
    }
    return NO;
}

+ (NSURLRequest *)canonicalRequestForRequest:(NSURLRequest *)request {
    return nil;
}

- (void)startLoading {
}

- (void)stopLoading {
    
}

@end
