//
//  RandomGenerator.swift
//  FoodRecommend
//
//  Created by 이예령 on 2021/02/05.
//

import UIKit

class RandomGenerator: UIViewController{

    //아울렛 이름을 KoreanImage로 해서 하나 만들것
    
    
    @IBOutlet weak var randomImage: UIImageView!
    var category = ""
    let foods:[String:[String]] = ["한식":Array<String>(), "중식":Array<String>(),"일식":Array<String>(),"양식":Array<String>(),"아시안":Array<String>(),"분식":Array<String>()]

    func randomImgPicker() {
        
        if let category_foods = foods[category] {
        let randomNumber = arc4random_uniform(UInt32(category_foods.count)) // generating random number
            
        
            //아울렛이미지(randomImage).image
        
                
            randomImage.image = UIImage(named: category_foods[Int(randomNumber)])
        }
    }

}
