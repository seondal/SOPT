//
//  SecondVC.swift
//  week7
//
//  Created by 김선오 on 2021/11/27.
//

import UIKit

class SecondVC: UIViewController {

    static let identifier = "SecondVC"
    @IBOutlet weak var textField: UITextField!
    var receivedText = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = receivedText
    }
    
    @IBAction func touchUpToSendData(_ sender: Any) {
        let presentingVC = presentingViewController as? FirstVC
        presentingVC?.textField.text = textField.text
        dismiss(animated: true, completion: nil)
    }
    
    func setDataInTextField(data : String){
        textField.text = data
    }
}
