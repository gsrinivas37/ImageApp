//
//  ViewController.swift
//  Image App
//
//  Created by Gudla Srinivas on 10/18/14.
//  Copyright (c) 2014 sgudla. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var imageCount = 0
    var imageArray :[UIImage] = []
    
    @IBOutlet weak var image: UIImageView!
    
    @IBAction func OnButtonPressed(sender: AnyObject) {
        if(++imageCount>4) {
            imageCount = 0
        }
        
        image.image = imageArray[imageCount]
    }
    
    @IBOutlet weak var onButtonPressed: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        var frame1 = UIImage(named: "frame1")
        var frame2 = UIImage(named: "frame2")
        var frame3 = UIImage(named: "frame3")
        var frame4 = UIImage(named: "frame4")
        var frame5 = UIImage(named: "frame5")
        
        imageArray.append(frame1)
        imageArray.append(frame2)
        imageArray.append(frame3)
        imageArray.append(frame4)
        imageArray.append(frame5)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidLayoutSubviews() {
        image.center = CGPointMake(image.center.x+400, image.center.y+200)
    }
    
    override func viewDidAppear(animated: Bool) {
        UIView.animateWithDuration(1, animations: {
            self.image.center = CGPointMake(self.image.center.x-400, self.image.center.y-200)
        })
    }
    

}

