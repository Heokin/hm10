//
//  ViewController.swift
//  lesson10task3
//
//  Created by Stas Dashkevich on 28.03.21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .orange
    }

    @IBAction func startAction(_ sender: Any) {
        let storyboard = UIStoryboard(name: "SecondStoryboard", bundle: Bundle.main)
       if let vc = storyboard.instantiateViewController(identifier: "SecondViewController") as? SecondViewController{
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
}

