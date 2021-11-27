//
//  RealCVC.swift
//  week7
//
//  Created by 김선오 on 2021/11/27.
//

import UIKit

class RealCVC: UICollectionViewCell {
        static let identifier = "KeywordCVC"
    @IBOutlet weak var KeywordButton: UIButton!
        var keyword: String = ""
        var selectdKeyword: Bool = false
        
    override func awakeFromNib() {
            super.awakeFromNib()
        }
        
    @IBAction func touchUpToSelect(_ sender: Any) {
    }
    
        func setKeyword(text: String){
            keyword = text
            KeywordButton.setTitle(keyword, for: .normal)
        }
    
}
