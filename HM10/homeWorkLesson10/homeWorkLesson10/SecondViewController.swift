//
//  SecondViewController.swift
//  homeWorkLesson10
//
//  Created by Stas Dashkevich on 23.03.21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tapButtonOutlet: UIButton!
    @IBOutlet weak var chechView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
    }
    
    @IBAction func tapGestr(_ sender: UITapGestureRecognizer) {
        let xLocation = sender.location(in: chechView).x
        let yLocation = sender.location(in: chechView).y
        
        if tapButtonOutlet.isHidden == false {
            tapButtonOutlet.frame = CGRect(x: xLocation, y: yLocation, width: tapButtonOutlet.frame.width, height: tapButtonOutlet.frame.height)
        } else {
            tapButtonOutlet.isHidden = false
            tapButtonOutlet.frame = CGRect(x: xLocation, y: yLocation, width: tapButtonOutlet.frame.width, height: tapButtonOutlet.frame.height)
        }
    }
    
    @IBAction func tapButton(_ sender: Any) {
        tapButtonOutlet.isHidden = true
    }
}
