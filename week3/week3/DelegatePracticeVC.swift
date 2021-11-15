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
        initPartData()
        textField.delegate = self
        partPickerView.dataSource = self
        partPickerView.delegate = self
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
    
    func initPartLayout() {
        partImageView.image = partList[0].makeImage()
        textField.text = partList[0].partName
    }
    
}

//데이터 제어기능
extension DelegatePracticeVC: UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return partList.count
    }
    
}

//사용자 동작 처리 기능
extension DelegatePracticeVC: UIPickerViewDelegate {
    
    //pickerView의 각 행의 title을 지정해주는 메소드
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return partList[row].partName
    }
    
    //pickerView에서 행을 선택했을 때 수행할 동작을 지정해 주는 메소드
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        //partList에서 row번쨰 있는 PartData의 UIimage를 가져오는 함수를 호출하여 partImageView의 image로 설정
        partImageView.image = partList[row].makeImage()
        
        //partList에서 row번째 있는 PartData의 partName을 가져와 textfield의 text로 지정
        textField.text = partList[row].partName
    }
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
