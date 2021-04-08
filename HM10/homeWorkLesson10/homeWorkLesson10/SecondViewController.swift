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
    
//    var cornerButton: UIButton!
//    var xPos: Int = 0
//    var yPos: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Second"
        
//        cornerButton = UIButton(frame: CGRect(x: 100, y: 100, width: 50, height: 50))
//        cornerButton.setTitle("", for: .normal)
//        cornerButton.backgroundColor = .red
//        cornerButton.addTarget(self, action: #selector(hidenButton), for: .touchUpInside)
//        view.addSubview(cornerButton)
//        cornerButton.isHidden = false
    }
    
    @IBAction func tapGestr(_ sender: UITapGestureRecognizer) {
//        let point = sender.location(in: chechView)
//        xPos = Int(point.x)
//        yPos = Int(point.y)
//        cornerButton = UIButton(frame: CGRect(x: xPos, y: yPos + 50, width: 50, height: 50))
        
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
