//
//  DelegatePracticeVC.swift
//  week3
//
//  Created by 김선오 on 2021/11/10.
//

import UIKit

class DelegatePracticeVC: UIViewController {

    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var partImageView: UIImageView!
    @IBOutlet weak var partPickerView: UIPickerView!
    
    var partList : [PartData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
        initPartData()
        // Do any additional setup after loading the view.
    }
    
    func initPartData() {
        partList.append(contentsOf: [
            PartData(imageName: "wesoptiOSPart", partName: "iOS"),
            PartData(imageName: "wesoptAndroidPart", partName: "Android"),
            PartData(imageName: "wesoptWebPart", partName: "Web"),
            PartData(imageName: "wesoptServerPart", partName: "Server"),
            PartData(imageName: "wesoptDesignPart", partName: "Design"),
            PartData(imageName: "wesoptPlanPart", partName: "Plan")
        ])
    }
    
}

extension DelegatePracticeVC: UIPickerViewDataSource {
    
}

extension DelegatePracticeVC: UIPickerViewDelgate {
    
}

extension DelegatePracticeVC: UITextFieldDelegate {
    func textFieldDidBeginEditing(_ textField: UITextField) {
        print("textFieldDidBeginEditing")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print("textFieldDidEndEditing")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print("textFieldShoudReturn")
        textField.endEditing(true)
        return true
    }
}
