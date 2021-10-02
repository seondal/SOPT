//
//  ViewController.swift
//  week1
//
//  Created by 김선오 on 2021/10/02.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func touchUpToGoSecondView(_ sender: Any) {
        guard let nextVC = self.storyboard?.instantiateViewController(withIdentifier:"SecondViewController")
        else {return}
        
        self.navigationController?.pushViewController(nextVC, animated:true)
        
//        nextVC.modalPresentationStyle = .pageSheet
//        nextVC.modalTransitionStyle = .crossDissolve
//        self.present(nextVC, animated: true, completion: nil)
    }
    
    @IBAction func button(_ sender: Any) {
        textLabel.text = "당신은 아가리입니다."
    }
}


