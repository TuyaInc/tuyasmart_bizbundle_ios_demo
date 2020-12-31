//
//  TYOTAObjcDemo.m
//  TuyaSmartBizBundleDemo_Example
//
//  Created by jesse on 2020/12/22.
//  Copyright © 2020 lal603743923. All rights reserved.
//

#import "TYOTAObjcDemo.h"
#import <TYModuleServices/TYModuleServices.h>
#import <TuyaSmartBizCore/TuyaSmartBizCore.h>

@interface TYOTAObjcDemo () <TYOTAGeneralExternalProtocol>

@end
@implementation TYOTAObjcDemo

+ (void)test:(TuyaSmartDeviceModel *)device {
    id<TYOTAGeneralProtocol> otaImp = [[TuyaSmartBizCore sharedInstance] serviceOfProtocol:@protocol(TYOTAGeneralProtocol)];
    
    if ([otaImp isSupportUpgrade:device]) {
        [otaImp checkFirmwareUpgrade:device isManual:YES theme:TYOTAControllerWhiteTheme];
    } else {
        NSLog(@"unsupported");
    }
}

+ (void)registerService {
    [[TuyaSmartBizCore sharedInstance] registerService:@protocol(TYOTAGeneralExternalProtocol) withInstance:self];
}

#pragma mark - TYOTAGeneralExternalProtocol -
- (BOOL)didTapCancelForceUpgrade {
    NSLog(@"didTapCancelForceUpgrade");
    return YES;
}

@end
