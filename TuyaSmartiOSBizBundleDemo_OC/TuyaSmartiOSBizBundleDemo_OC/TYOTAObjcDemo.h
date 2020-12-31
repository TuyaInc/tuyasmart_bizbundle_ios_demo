//
//  TYOTAObjcDemo.h
//  TuyaSmartBizBundleDemo_Example
//
//  Created by jesse on 2020/12/22.
//  Copyright © 2020 lal603743923. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@class TuyaSmartDeviceModel;
@interface TYOTAObjcDemo : NSObject

+ (void)registerService;

+ (void)test:(TuyaSmartDeviceModel *)device;

@end

NS_ASSUME_NONNULL_END
