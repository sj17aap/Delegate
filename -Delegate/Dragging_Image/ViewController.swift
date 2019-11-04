//
//  ViewController.swift
//  Dragging_Image
//
//  Created by Xianhui Che on 26/05/2016.
//  Copyright © 2016 Xianhui Che. All rights reserved.
//

import UIKit

protocol subviewDelegate {
    func changeSomething()
}

class ViewController: UIViewController, subviewDelegate {
    
    func changeSomething() {
        display.text = "X Position: " + String(Int((flowerImageView.center.x)))
    }

    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var flowerImageView: DraggedImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        flowerImageView.myDelegate = self
        
        let when = DispatchTime.now() + 2;
        DispatchQueue.main.asyncAfter(deadline: when){
            self.view.backgroundColor = UIColor.red
           
           }
        
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    

}

