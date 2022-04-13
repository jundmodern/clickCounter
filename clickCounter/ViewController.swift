//
//  ViewController.swift
//  clickCounter
//
//  Created by Seth Singletary on 4/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        
        //Button
        let button = UIButton()
        button.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        button.setTitle("Click", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControl.Event.touchUpInside)
    }
    @objc func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }


}

