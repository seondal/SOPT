//
//  DelegatePracticVC.swift
//  week7
//
//  Created by 김선오 on 2021/11/27.
//

import UIKit

class DelegatePracticVC: UIViewController, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return nameList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RealCVC.identifier, for: indexPath) as? RealCVC else {return UICollectionViewCell()}
        cell.setKeyword(text: nameList[indexPath.row])
        return cell
    }
    

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var warningLabel: UILabel!
    var nameList : [String] = []
    var selectedNameList: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initDataList()
        configCollectionView()
    }
    
    func configCollectionView() {
        let nibName = UINib(nibName: RealCVC.identifier, bundle: nil)
        collectionView.register(nibName, forCellWithReuseIdentifier: RealCVC.identifier)
        collectionView.dataSource = self
    }
    
    func initDataList(){
            nameList.append(contentsOf: ["김루희","김선영","김소연","김수연","김승찬","김윤서","김인환",
                                         "김지수","김태현","김현규","김혜수","박예빈","박익범","배은서",
                                         "송지훈","신윤아","안현주","양수빈","이경민","이남준","이유진",
                                         "이준호","임주민","장혜령","정은희","정정빈","조양원","최은주",
                                         "최이준","홍승현","황지은"])
        }
}
