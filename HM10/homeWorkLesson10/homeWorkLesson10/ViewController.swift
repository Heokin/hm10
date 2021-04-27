//
//  ViewController.swift
//  homeWorkLesson10
//
//  Created by Stas Dashkevich on 23.03.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var startButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
        startButtonOutlet.layer.cornerRadius = 25
        startButtonOutlet.setTitle("Start", for: .normal)
    }
    
    @IBAction func startButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: Bundle.main)
        if let vc = storyboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
}





