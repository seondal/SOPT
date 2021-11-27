//
//  FirstVC.swift
//  week7
//
//  Created by 김선오 on 2021/11/27.
//

import UIKit

class FirstVC: UIViewController {

    static let identifier = "FirstVC"
    @IBOutlet weak var textField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func touchUpToSendData(_ sender: Any) {
        guard let nextVC = storyboard?.instantiateViewController(withIdentifier: SecondVC.identifier) as? SecondVC else {return}
//        nextVC.setDataInTextField(data: textField.text ?? "")
        nextVC.receivedText = textField.text ?? ""
        present(nextVC, animated: true, completion: nil)
    }
    
}
