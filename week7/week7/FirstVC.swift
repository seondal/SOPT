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
//        nextVC.receivedText = textField.text ?? ""
        NotificationCenter.default.addObserver(self, selector: #selector(dataReceived), name: NSNotification.Name("iOS-Sample"), object: nil)
        present(nextVC, animated: true, completion: nil)
    }
    
    @objc func dataReceived(notification: NSNotification) {
        if let text = notification.object as? String {
            textField.text = text
        }
    }
}
