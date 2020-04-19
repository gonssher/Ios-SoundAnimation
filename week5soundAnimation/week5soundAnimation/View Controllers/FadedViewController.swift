//
//  FadedViewController.swift
//  week5soundAnimation
//
//  Created by Sherwin on 2020-02-03.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class FadedViewController: UIViewController {
    
    var fadeLayer : CALayer?
    @IBOutlet var slideshow : UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        let img1 = UIImage(named: "about.jpeg")
    let img2 = UIImage(named: "settings.jpeg")
        let img3 = UIImage(named: "play.jpeg")
    
    let adImgs = [img1,img2,img3]
        slideshow.animationImages = adImgs as! [UIImage]
        slideshow.animationDuration = 2.0
        slideshow.animationRepeatCount = 0
        slideshow.startAnimating()
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let fadeImage = UIImage(named: "gre.jpg")
        fadeLayer = .init()
        fadeLayer?.contents = fadeImage?.cgImage
        fadeLayer?.bounds = CGRect(x:0 , y:0, width: 150,height: 160)
        fadeLayer?.position = CGPoint(x: 200, y: 200)
        view.layer.addSublayer(fadeLayer!)
        
        
        let fadeAnmation = CABasicAnimation(keyPath: "opacity")
        fadeAnmation.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        fadeAnmation.fromValue = 1.0
        fadeAnmation.toValue = 0.0
        fadeAnmation.isRemovedOnCompletion = false
        fadeAnmation.duration = 3.0
        fadeAnmation.beginTime = 1.0
        fadeAnmation.isAdditive = false
        fadeAnmation.fillMode = .both
        fadeAnmation.repeatCount = .infinity
        fadeLayer?.add(fadeAnmation, forKey: nil)
        fadeAnmation.autoreverses = true
        
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
