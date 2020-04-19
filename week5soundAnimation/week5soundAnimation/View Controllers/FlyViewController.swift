//
//  FlyViewController.swift
//  week5soundAnimation
//
//  Created by Sherwin on 2020-02-03.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit

class FlyViewController: UIViewController {
    
    var flyLayer : CALayer?

    override func viewDidLoad() {
        super.viewDidLoad()

        let flyImage = UIImage(named: "gre.jpg")
        flyLayer = CALayer()
        flyLayer?.contents = flyImage?.cgImage
        flyLayer?.bounds = CGRect(x:0,y:0,width: 150,height: 150)
        flyLayer?.position = CGPoint(x:0,y:0)
        view.layer.addSublayer(flyLayer!)
        
        let moveAnimationn = CABasicAnimation(keyPath:"position")
        moveAnimationn.timingFunction = CAMediaTimingFunction(name:.easeInEaseOut)
        moveAnimationn.fromValue = NSValue.init(cgPoint: CGPoint(x:0,y:0))
        moveAnimationn.toValue = NSValue.init(cgPoint: CGPoint(x:700 , y:500))
        moveAnimationn.isRemovedOnCompletion = false
        moveAnimationn.duration = 4.0
        moveAnimationn.repeatCount = .infinity
        flyLayer?.add(moveAnimationn, forKey: nil)
        
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
