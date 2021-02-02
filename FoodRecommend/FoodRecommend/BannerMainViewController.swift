//
//  BannerViewController.swift
//  FoodRecommend
//
//  Created by 김규리 on 2021/02/02.
//

import UIKit

class BannerMainViewController:UIViewController {
    
    @IBOutlet weak var bannerScrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bannerViewController = Banner()
        // 화면에 표시되도록 넣어줌
        bannerScrollView.addSubview(bannerViewController.view)
        // 스크롤이 가능하도록 컨텐츠 사이즈 설정
        bannerScrollView.contentSize = bannerViewController.view.frame.size
    }
}

