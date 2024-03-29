//
//  ViewController.swift
//  FoodRecommend
//
//  Created by 이예령 on 2021/02/01.
//

import UIKit


class ViewController: UIViewController {
    var titleImages = ["korean","chinese","japanese","asian","snack","western"]
   
    var foodData = [
        FoodData("한식","korean"),
        FoodData("중식","chinese"),
        FoodData("일식","japanese"),
        FoodData("아시안","asian"),
        FoodData("분식","snack"),
        FoodData("양식","western")
       
    ]
    
    @IBOutlet weak var bannerScrollView: UIScrollView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       
        
        
        let bannerViewController = Banner()
        // 화면에 표시되도록 넣어줌
        bannerScrollView.addSubview(bannerViewController.view)
        // 스크롤이 가능하도록 컨텐츠 사이즈 설정
        bannerScrollView.contentSize = bannerViewController.view.frame.size
        
            }


}

extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return titleImages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "foodCell", for: indexPath) as! FoodCell
        
        let data = foodData[indexPath.row]
        
        //대분류이름
        cell.titleLabel.text = data.title

        
        //타이틀 이미지 변경
        cell.titleImage.image = UIImage(named: titleImages[indexPath.row])
        
        
        //border 설정
        cell.layer.borderWidth = 0.3
        cell.layer.borderColor = UIColor.lightGray.cgColor
        
        
        return cell
    }
}

extension ViewController: UICollectionViewDelegateFlowLayout{
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = self.view.frame.size.width / 3-5
        let height = width * 1.5
        
        return CGSize(width: width, height: height)
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      
        if let cell =  sender as? FoodCell {
            
            print("1")
            if let vc = segue.destination as? RandomGenerator, let title = cell.titleLabel, let title_text = title.text {
                
                print("2")
                vc.category = title_text
                
                //print(vc.foods)
                print("3")
            }
          
        }
    }
}



