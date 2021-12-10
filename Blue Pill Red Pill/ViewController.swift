//
//  ViewController.swift
//  Blue Pill Red Pill
//
//  Created by Red Phoenix on 10/12/21.
//

import UIKit
import AVKit
import AVFoundation

class ViewController: UIViewController {
    
    
    var menuItems: [UIAction] {
        return [
            UIAction(title: "Take the Red Pill", image: UIImage(systemName: "list.star"), handler: { (_) in
          
                  
                
            }),
            UIAction(title: "See How Deep the Rabbit-Hole goes", image: UIImage(systemName: "photo"), attributes: .destructive, handler: { (_) in
                
               
            }),
            UIAction(title: "Stay in Wonderland", image: UIImage(systemName: "video"), attributes: .destructive, handler: { (_) in
                
              
                self.bluePill.titleLabel?.text = "IGTV"
            })
        ]
    }

    var menuItems2: [UIAction] {
        return [
            UIAction(title: "Take the Blue Pill", image: UIImage(systemName: "list.star"), handler: { (_) in
          
                  
                
            }),
            UIAction(title: "The Story ends here", image: UIImage(systemName: "photo"), attributes: .destructive, handler: { (_) in
                
               
            }),
            UIAction(title: "Go back to the normal life", image: UIImage(systemName: "video"), attributes: .destructive, handler: { (_) in
                
              
                
            })
        ]
    }

    
    var demoMenu: UIMenu {
        return UIMenu(title: "Red Pill Menu", image: nil, identifier: nil, options: [], children: menuItems)
    }
    
    var demoMenu2: UIMenu {
        return UIMenu(title: "Blue Pill Menu", image: nil, identifier: nil, options: [], children: menuItems2)
    }
    
    func configureButtonMenu2() {
        bluePill.menu = demoMenu2
        bluePill.showsMenuAsPrimaryAction = true
    }
    
    func configureButtonMenu1() {
        redPill.menu = demoMenu
        redPill.showsMenuAsPrimaryAction = true
    }
    
    @IBOutlet weak var bluePill: UIButton!
    @IBOutlet weak var redPill: UIButton!
    
    @IBOutlet weak var codeRain: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        redPillConfig()
        bluePillConfig()
        configureButtonMenu2()
        configureButtonMenu1()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: "Matrix Raining Code", ofType: "mp4")!))
        
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
        codeRain.layer.addSublayer(layer)
        
        player.play()
    }

    
    func bluePillConfig() {
        
        bluePill.layer.opacity = 0.9
        bluePill.layer.shadowColor = UIColor.systemBlue.cgColor
        bluePill.layer.shadowOffset = CGSize(width: 5, height: 5)
        bluePill.layer.shadowRadius = 21
        bluePill.layer.shadowOpacity = 0.9
        
    }
    
    func redPillConfig() {
        
        redPill.layer.opacity = 0.9
        redPill.layer.shadowColor = UIColor.systemPink.cgColor
        redPill.layer.shadowOffset = CGSize(width: 5, height: 5)
        redPill.layer.shadowRadius = 21
        redPill.layer.shadowOpacity = 0.9
       
        
    }
    
    
    

}

