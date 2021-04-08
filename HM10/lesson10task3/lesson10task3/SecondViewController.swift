//
//  SecondViewController.swift
//  lesson10task3
//
//  Created by Stas Dashkevich on 28.03.21.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var checkView: UIView!
    @IBOutlet weak var viewOutlet: UIView!
    var xLocation: Int = 100
    var yLocation: Int = 100
    override func viewDidLoad() {
        super.viewDidLoad()
        viewOutlet.backgroundColor = .black
        viewOutlet.frame = CGRect(x: xLocation, y: yLocation, width: 70, height: 70)
        view.backgroundColor = .orange
      title = "LONG PRESS"
    }
    
    @IBAction func longGesture(_ sender: UIGestureRecognizer) {
        xLocation = Int(sender.location(in: checkView).x)
        yLocation = Int(sender.location(in: checkView).y)
        
        viewOutlet.frame.origin = CGPoint(x: xLocation, y: yLocation)
    }
}
