//
//  ViewController.swift
//  stamp.emily
//
//  Created by 野崎絵未里 on 2019/10/10.
//  Copyright © 2019 emily.com. All rights reserved.

//
//  ViewController.swift
//  stamp.emily
//
//  Created by 野崎絵未里 on 2019/10/10.
//  Copyright © 2019 emily.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var stampArray: [String] = ["flower","heart","balloon","star"]
    
    var stampindex:Int = 0
    
    @IBOutlet weak var background: UIImageView!
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func stampFirst(_ sender: Any) {
        stampindex = 1
    }
    
    @IBAction func stampSecond(_ sender: Any) {
        stampindex = 2
    }
    @IBAction func stampThird(_ sender: Any) {
        stampindex = 3
    }
    
    @IBAction func stampForth(_ sender: Any) {
        stampindex = 4
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch: UITouch = touches.first!
        let location: CGPoint = touch.location(in: self.view)
        if stampindex != 0 {
            
            if stampindex == 2 {
                imageView = UIImageView(frame: CGRect(x: 0, y:0, width: 83, height: 55))
            } else if stampindex == 4{
                imageView = UIImageView(frame: CGRect(x: 0, y:0, width: 83, height: 73))
            } else if stampindex != 2 && stampindex != 4{
                
                imageView = UIImageView(frame: CGRect(x: 0, y:0, width: 80, height: 80))
            }
            let image: UIImage = UIImage(named: stampArray[stampindex - 1])!
            imageView.image = image
            
            imageView.center = CGPoint(x: location.x, y: location.y)
            
            self.view.addSubview(imageView)
        }
    }
    
}

