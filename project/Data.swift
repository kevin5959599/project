//
//  Data.swift
//  project
//
//  Created by User23 on 2018/6/29.
//  Copyright © 2018年 User23. All rights reserved.
//

import Foundation
import UIKit

struct Data: Codable {
    var name: String
    var price: String
    var detail: String

    
    
    
    static func readDataFromFile() -> [Data]? {
        let propertyDecoder = PropertyListDecoder()
        if let data = UserDefaults.standard.data(forKey: "datas"),
            let datas = try? propertyDecoder.decode([Data].self, from: data) {
            return datas
        } else {
            return nil
        }
    }
    
    static func saveToFile(datas: [Data]) {
        let propertyEncoder = PropertyListEncoder()
        if let data = try? propertyEncoder.encode(datas) {
            UserDefaults.standard.set(data, forKey: "datas")
        }
    }
}
