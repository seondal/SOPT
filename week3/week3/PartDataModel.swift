//
//  PartDataModel.swift
//  week3
//
//  Created by 김선오 on 2021/11/10.
//

import UIKit

struct PartData {
    var imageName : String
    var partName: String
    
    func makeImage() -> UIImage? {
        return UIImage(named: imageName)
    }
}
