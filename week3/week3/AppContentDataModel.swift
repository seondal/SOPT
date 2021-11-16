//
//  AppContentDataModel.swift
//  week3
//
//  Created by 김선오 on 2021/11/16.
//

import UIKit

struct AppContentData {
    let appName: String
    let description: String
    let appIconName: String
    
    func makeImage() -> UIImage? {
        return UIImage(named: appIconName)
    }
}
