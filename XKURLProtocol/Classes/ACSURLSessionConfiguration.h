//
//  ACSURLSessionConfiguration.h
//  
//
//  Created by ty on 2017/4/10.
//  Copyright © 2017年 ty. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ACSURLSessionConfiguration : NSObject

@property (nonatomic,assign) BOOL isSwizzle;

+ (ACSURLSessionConfiguration *)defaultConfiguration;

/**
 *  swizzle NSURLSessionConfiguration's protocolClasses method
 */
- (void)load;

/**
 *  make NSURLSessionConfiguration's protocolClasses method is normal
 */
- (void)unload;

@end
