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
    var image:UIImage?
    var timer:Timer?
    
    @IBOutlet weak var nextBottan: UIButton!
    @IBOutlet weak var backBottan: UIButton!
    @IBOutlet weak var slideBottan: UIButton!
    
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
  
    }
    //スライドショー部分
      @IBAction func start(_ sender: Any) {
        
      
      //ボタンの表示の切り替え
      if self.timer != nil {
        slideBottan.setTitle("再生", for: UIControl.State())
          timer?.invalidate()
          timer = nil
        nextBottan.isEnabled = true
        backBottan.isEnabled = true
      } else {
        slideBottan.setTitle("停止", for: UIControl.State())
        timer = Timer.scheduledTimer( timeInterval: 2.0, target:self, selector: #selector(slideShow(_:)), userInfo: nil, repeats: true)
          nextBottan.isEnabled = false
          backBottan.isEnabled = false
          
          }
    }
    @objc func slideShow(_ time:Timer){
          count += 1
          if count <= 2
            { img.image = imageArray[count]
            } else {
              img.image = imageArray[count%3]
       }
    }
    
    var count = 0
    //進む
    @IBAction func next(_ sender: Any) {
        count += 1
        if count <= 2
        { img.image = imageArray[count]
        } else {
            img.image = imageArray[count%3]
        }
        }
    //戻る
    @IBAction func back(_ sender: Any) {
        count += 2
        if count <= 2{
            img.image = imageArray[count]
        } else {
        img.image = imageArray[count%3]}
        

    }
    @IBAction func up(_ sender: Any) {
        if self.timer != nil {
               slideBottan.setTitle("再生", for: UIControl.State())
                 timer?.invalidate()
                 timer = nil
               nextBottan.isEnabled = true
               backBottan.isEnabled = true
             } else {
               
                 
                 }
    }
    
    
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let upViewController:UpViewController = segue.destination as! UpViewController
        upViewController.selectedImg = img.image  }
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
 
    
    override func didReceiveMemoryWarning() {
          super.didReceiveMemoryWarning()   }
    
}

