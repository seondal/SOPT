//
//  RankingVC.swift
//  week3
//
//  Created by 김선오 on 2021/11/16.
//

import UIKit

class RankingVC: UIViewController {

    @IBOutlet weak var rankTableView: UITableView!
    @IBOutlet weak var rankCollectionView: UICollectionView!
    
    //1. 테이블뷰셀에 넣을 앱 데이터 리스트 프로퍼티를 빈 배열로 선언
    var appContentList : [AppContentData] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initAppContentList()    //3.함수 호출
        registerXib()
        
        rankTableView.dataSource = self
        rankTableView.delegate = self
        
        rankCollectionView.dataSource = self
        rankCollectionView.delegate = self
    }
    
    func registerXib() {
        let xibName = UINib(nibName: RankingTableViewCell.idetifier, bundle:nil)
        rankTableView.register(xibName, forCellReuseIdentifier: RankingTableViewCell.idetifier)
    }
    
    //2. 실제 구조체 데이터를 넣는 함수 만들기
    func initAppContentList() {
        appContentList.append(contentsOf : [
            AppContentData(appName: "질병관리청", description: "전자예방접종증명서", appIconName: "coovIcon"),
            AppContentData(appName: "카카오톡", description: "소셜 네트워킹", appIconName: "kakaoIcon"),
            AppContentData(appName: "YouTube", description: "동영상과 음악", appIconName: "youtubeIcon"),
            AppContentData(appName: "네이버", description: "검색과 콘텐츠, 쇼핑, 내도구", appIconName: "naverIcon"),
            AppContentData(appName: "Instagram", description: "사진 및 비디오", appIconName: "instagramIcon"),
            AppContentData(appName: "쿠팡", description: "스마트한 쇼핑", appIconName: "coupangIcon"),
            AppContentData(appName: "배달의민족", description: "대한민국 1등 배달앱", appIconName: "baeminIcon"),
            AppContentData(appName: "당근마켓", description: "중고거래", appIconName: "karrotIcon"),
            AppContentData(appName: "Netflix", description: "지금 바로 시청하세요", appIconName: "netflixIcon"),
            AppContentData(appName: "무신사", description: "브랜드 패션 쇼핑", appIconName: "musinsaIcon"),
        ])
    }

}

extension RankingVC : UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

extension RankingVC : UITableViewDataSource {
    
    //section 마다 몇개의 row를 넣어야 하는지 지정하는 함수
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return appContentList.count
    }
    
    //indexPath를 활용하여 셀별로 데이터 다르게 지정 가능
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RankingTableViewCell.idetifier) as? RankingTableViewCell else {return UITableViewCell()}
        
        cell.setData(rank: indexPath.row, appData: appContentList[indexPath.row])
        return cell
    }
    
    
}
