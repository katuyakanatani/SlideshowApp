//
//  ViewController.swift
//  SlideshowApp
//
//  Created by USER on 2020/01/08.
//  Copyright © 2020 katuya.kanatani. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    
    //画像
        let image1 = UIImage(named:"sample0")
        let image2 = UIImage(named:"sample1")
        let image3 = UIImage(named:"sample2")
  
        var imageArray : Array<UIImage> = []
            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //背景のいろ
        self.view.backgroundColor = UIColor(red:0.44,green:0.41,blue:0.36,alpha:1.0)
        //初期画面
        img.image = UIImage(named: "sample0")
        
         self.view.addSubview(img)
         //UIImage 各要素を追加
        imageArray.append(image1!)
        imageArray.append(image2!)
        imageArray.append(image3!)
        
        @objc func Slide(_ )
        
        
        while let nextImage = UIImage(named: "sample\(imageArray.count)"){
        imageArray.append(nextImage)
    
        
        
        
    }
  
    }
    //進む
    @IBAction func next(_ sender: Any) {
        img.image = image2
        
    }
    //戻る
    @IBAction func back(_ sender: Any) {
        img.image = image3
    }
    
    //スライドショー部分
    @IBAction func start(_ sender: AnyObject) {
    
        let imageView:UIImageView = UIImageView(image:image1)
        
        self.view.addSubview(imageView)
        
         imageView.animationImages = imageArray
         imageView.animationDuration = 2
         imageView.animationRepeatCount = 3
        
         imageView.startAnimating()
        
    }
    
    override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()
          
          }
          
    
}

