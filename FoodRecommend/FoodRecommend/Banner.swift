//
//  Banner.swift
//  FoodRecommend
//
//  Created by 김규리 on 2021/02/03.
//

// banner 이미지 불러오기

import UIKit

class Banner:UIViewController {
    
    //banner image list
    let banner_images = ["banner_01","banner_02"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ex)218:120 경우 -> 높이 = 너비 * 120/128, 944:456
        let screenSize = UIScreen.main.bounds //화면의 정보
        let width = screenSize.width
        let height = width * 456 / 944
        
        for (index, imageName) in banner_images.enumerated() {
            let image = UIImage(named: imageName)
            let imageView = UIImageView(image: image)
            imageView.frame = CGRect(x: CGFloat(index)*width, y: 0, width: width, height: height)
            self.view.addSubview(imageView)
        }
        
        self.view.frame = CGRect(x: 0, y: 0, width: width*CGFloat(banner_images.count), height: height)
        
    }
}
