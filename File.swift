//
//  File.swift
//  MyLibrary
//
//  Created by Jose F Gómez Arbaizar on 3/8/22.
//

import Foundation
import LBFraudSDKiOS

public class testing {
    init(){
        let locationManager = CLLocationManager()
              locationManager.requestWhenInUseAuthorization()
        
        let iron = LBFraudSDK.init(apikey: "OyjC29.PVag8bjVdYNYciah8JDYSNvhtGZEN104LGjOPqwzvrrVU8SG00")
        let data: [String: Any] = [
            "concept": "example1",
            "amount": "2",
            "operation": "transaction"
        ]
        _ = iron.permissionStatus()
        iron.transactionPost(transactionId: "9273dghsg8hj", userId: "pepe", extraData: data)
    }
}
