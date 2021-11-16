//
//  RankCollectionViewCell.swift
//  week3
//
//  Created by 김선오 on 2021/11/16.
//

import UIKit

class RankCollectionViewCell: UICollectionViewCell {
    
    static let idetifier = "RankCollectionViewCell"
    
    @IBOutlet weak var appNameLabel: UILabel!
    @IBOutlet weak var appIconImageVIew: UIImageView!
    
    func setData(appName: String, appImage: UIImage?){
        appNameLabel.text = appName
        appIconImageVIew.image = appImage
    }
}

extension RankingVC: UICollectionViewDataSource {
    
    //섹션마다 몇개의 아이템이 들어가는지 결정
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return appContentList.count
    }
    
    //indexPath에 어떤 cell 데이터를 넣을지 결정하는 메소드
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: RankCollectionViewCell.idetifier, for: indexPath) as? RankCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        cell.setData(appName: appContentList[indexPath.row].appName, appImage: appContentList[indexPath.row].makeImage())
        
        return cell
    }
    
}

extension RankingVC: UICollectionViewDelegateFlowLayout {
    
    //셀의 크기
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width:100, height:100)
    }
    
    //셀과 컨텐츠의 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets.zero
    }
    
    //셀의 상하 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    //셀의 좌우 간격
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
