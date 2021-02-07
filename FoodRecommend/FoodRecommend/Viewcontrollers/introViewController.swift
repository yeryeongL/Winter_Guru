//
//  introViewController.swift
//  FoodRecommend
//
//  Created by 이예령 on 2021/02/07.
//

import UIKit
import SwiftyGif

class introViewController: UIViewController{
    
    @IBOutlet weak var logoImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do{
        let gif = try UIImage(gifName: "intro_food.gif")
        self.logoImageView.setGifImage(gif, loopCount: -1) // Will loop forever
        }catch{
            
            print(error)
        }
        
      
        }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let timer = Timer.scheduledTimer(withTimeInterval: 5.6, repeats: false) { (timer) in
           
            if let vc = self.storyboard?.instantiateViewController(withIdentifier: "mainViewController"){
                vc.modalPresentationStyle = .fullScreen
                self.present(vc,animated: false,completion: nil)
        }
       
    }
    }
}
    
   
