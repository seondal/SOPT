//
//  CustomTabBarController.swift
//  week2
//
//  Created by 김선오 on 2021/10/26.
//

import UIKit

class CustomTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBar()
        // Do any additional setup after loading the view.
    }
    
    func setTabBar() {
        guard let orangeVC = self.storyboard?.instantiateViewController(identifier: "OrangeVC"),
              let purpleVC = self.storyboard?.instantiateViewController(identifier: "PurpleVC")
        else {return}
        
        orangeVC.tabBarItem.title = "Home"
        orangeVC.tabBarItem.image = UIImage(systemName: "house")
        orangeVC.tabBarItem.selectedImage = UIImage(systemName: "house.fill")
        
        purpleVC.tabBarItem.title = "Profile"
        purpleVC.tabBarItem.image = UIImage(systemName: "person")
        purpleVC.tabBarItem.selectedImage = UIImage(systemName: "person.fill")
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
