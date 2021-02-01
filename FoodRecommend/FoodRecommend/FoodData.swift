//
//  FoodData.swift
//  FoodRecommend
//
//  Created by 이예령 on 2021/02/01.
//

struct FoodData {
    var title_image:String!
    var title:String!
    
    init(_ title:String, _ title_image:String) {
        self.title = title
        self.title_image = title_image
    }
}
