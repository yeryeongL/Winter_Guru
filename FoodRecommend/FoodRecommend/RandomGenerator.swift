//
//  RandomGenerator.swift
//  FoodRecommend
//
//  Created by 이예령 on 2021/02/05.
//

import UIKit
import NVActivityIndicatorView

class RandomGenerator: UIViewController{
    
    var indicator:NVActivityIndicatorView!

    //아울렛 이름을 KoreanImage로 해서 하나 만들것
    
    
    @IBOutlet weak var randomImage: UIImageView!
    var category = ""
    
//    let foods:[String:[String]] = ["한식":Array<String>(), "중식":Array<String>(),"일식":Array<String>(),"양식":Array<String>(),"아시안":Array<String>(),"분식":Array<String>()]
    
    let foods: [String:[String]] = ["한식":["갈비찜","감자탕","곱창","김치찌개","낚지볶음","닭볶음탕","된장찌개","만둣국","매운탕","보쌈","부대찌개","불고기","비빔밥","삼겹살","삼계탕","설렁탕","순대국","순두부찌개","아구찜","오리고기","전","제육볶음","족발","쭈꾸미","찜닭","칼국수","해장국"],
        "중식":["짜장면", "짬뽕", "탕수육", "볶음밥", "깐풍기", "깐쇼새우","양장피", "마라탕", "마라샹궈", "훠궈", "양꼬치"],
        "일식":["초밥", "돈까스", "회","모밀소바", "우동", "라멘", "카레", "나베", "꼬치", "규동", "가츠동","텐동"],
        "양식":["크림파스타", "토마토파스타", "오일파스타", "봉골레파스타", "크림리조또", "토마토리조또", "감바스", "빠에야", "퀘사디아", "찹스테이크", "함박스테이크", "타코", "부리또"],
        "아시안":["나시고랭", "카오팟", "팟타이", "미고랭", "똠양꿍", "월남쌈", "쌀국수", "샤오롱바오", "하가우", "탄탄면", "우육면"],
        "분식":["김밥","냉면","닭강정","라면","쫄면","토스트","튀김","핫도그"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        indicator = NVActivityIndicatorView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height), type: .pacman, color: .white, padding: self.view.frame.width/2 - 40)
        indicator.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        self.view.addSubview(indicator)
        self.view.bringSubviewToFront(indicator)
        print("in")
        self.indicator.startAnimating()
        randomImgPicker()
        
        
    }
    
    func randomImgPicker() {
        
        
        if let category_foods = foods[category] {
            //self.indicator.stopAnimating()
            
        let randomNumber = arc4random_uniform(UInt32(category_foods.count)) // generating random number
            
            //아울렛이미지(randomImage).image
        
            randomImage.image = UIImage(named: category_foods[Int(randomNumber)])
            
            
        }
        
    }
    

 

}
