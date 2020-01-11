//
//  UpViewController.swift
//  SlideshowApp
//
//  Created by USER on 2020/01/09.
//  Copyright © 2020 katuya.kanatani. All rights reserved.
//

import UIKit

class UpViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    var selectedImg: UIImage!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        
        imageView.image = selectedImg
       
    }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


