//
//  SpiningViewController.swift
//  week5soundAnimation
//
//  Created by Sherwin on 2020-02-03.
//  Copyright © 2020 Sherwin. All rights reserved.
//

import UIKit
import AVFoundation

class SpiningViewController: UIViewController {
    
    @IBOutlet var volSlide : UISlider!
    var soundplayer : AVAudioPlayer?
    var spinLayer : CALayer?
    
    @IBAction func volumeDidchange (sender: UISlider)
    {
    
    soundplayer?.volume = volSlide.value
    
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        let soundURL = Bundle.main.path(forResource: "song1", ofType: "mp3")
        let url = URL(fileURLWithPath: soundURL!)
        soundplayer=try! AVAudioPlayer.init(contentsOf: url)
        soundplayer?.currentTime=0
        soundplayer?.volume = volSlide.value
        soundplayer?.numberOfLoops = -1
        soundplayer?.play()
    }
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let spinImage = UIImage(named: "about.jpeg")
        
        spinLayer = CALayer.init()
        spinLayer?.contents = spinImage?.cgImage
        spinLayer?.bounds=CGRect(x: 0, y: 0, width: 150, height: 150)
        spinLayer?.position = CGPoint(x: 200, y: 200)
        
        view.layer.addSublayer(spinLayer!)
        
        
        let rotateAnimation = CABasicAnimation(keyPath: "transform.rotation")
     
        rotateAnimation.fromValue=0
        rotateAnimation.toValue = 2 * Double.pi
        rotateAnimation.repeatCount = .infinity
        rotateAnimation.isRemovedOnCompletion = false
        rotateAnimation.duration = 1.0
        spinLayer?.add(rotateAnimation, forKey: "rotate")
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
