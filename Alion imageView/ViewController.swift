//
//  ViewController.swift
//  Alion imageView
//
//  Created by D7703_22 on 2018. 4. 2..
//  Copyright © 2018년 D7703_22. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var count = 1;
    var direction = 1;
    @IBOutlet weak var myImageview: UIImageView!
    @IBOutlet weak var index: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //  첫번째 이미지를 로드함
        myImageview.image = UIImage(named: "frame1.png")
        index.text = "1"
    }

    @IBAction func imageupdate(_ sender: Any) {
        if count == 5{
            direction = 0
        }
        else if count == 1{
            direction = 1
        }
        if direction == 1{
            count += 1;}
        else if direction == 0{
            count = count - 1
        }
        myImageview.image = UIImage(named: "frame\(count).png")
        index.text = String(count)
        }

}

