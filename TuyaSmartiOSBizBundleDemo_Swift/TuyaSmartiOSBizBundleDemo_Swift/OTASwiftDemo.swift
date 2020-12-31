//
//  OTASwiftDemo.swift
//  TuyaSmartBizBundleDemo_Example
//
//  Created by jesse on 2020/12/22.
//  Copyright © 2020 lal603743923. All rights reserved.
//

import Foundation

class OTASwiftDemo: NSObject, TYOTAGeneralExternalProtocol {
    @objc static
    func test(_ deviceModel: TuyaSmartDeviceModel) {
        guard let otaImp = TuyaSmartBizCore.sharedInstance().service(of: TYOTAGeneralProtocol.self) as? TYOTAGeneralProtocol else { return }
        
        if otaImp.isSupportUpgrade(deviceModel) {
            otaImp.checkFirmwareUpgrade(deviceModel, isManual: true, theme: .whiteTheme)
        } else {
            print("unsupported")
        }
    }
    
    @objc static
    func registerService() {
        TuyaSmartBizCore.sharedInstance().registerService(TYOTAGeneralExternalProtocol.self, withInstance: self)
    }
    
    // MARK: - TYOTAGeneralExternalProtocol -
    func didTapCancelForceUpgrade() -> Bool {
        print("didTapCancelForceUpgrade")
        return true
    }
}
