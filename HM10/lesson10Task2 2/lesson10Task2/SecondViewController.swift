//
//  SecondViewController.swift
//  lesson10Task2
//
//  Created by Stas Dashkevich on 28.03.21.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var viewOutlet: UIView!
    
    var xLocation: Int = 30
    var yLocation: Int = 100
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutlet.frame = CGRect(x: xLocation, y: yLocation, width: 100, height: 100)
        title = "Second"
        view.backgroundColor = .gray
    }

    @IBAction func leftSwipe(_ sender: Any) {
        if xLocation != 0 {
        xLocation -= 20
        viewOutlet.frame.origin = CGPoint(x: xLocation, y: yLocation)
        }
    }
    
    @IBAction func rightSwipe(_ sender: Any) {
        if xLocation != 360 {
        xLocation += 20
        viewOutlet.frame.origin = CGPoint(x: xLocation, y: yLocation)
        }
    }
    
    @IBAction func downSwipe(_ sender: Any) {
        if yLocation != 760 {
        yLocation += 20
        viewOutlet.frame.origin = CGPoint(x: xLocation, y: yLocation)
        }
    }
    
    @IBAction func upSwipe(_ sender: Any) {
        if yLocation != 40 {
        yLocation -= 20
        viewOutlet.frame.origin = CGPoint(x: xLocation, y: yLocation)
        }
    }
}
