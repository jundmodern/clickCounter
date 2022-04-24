//
//  ViewController.swift
//  clickCounter
//
//  Created by Seth Singletary on 4/11/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var label: UILabel!
    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func incrementCount(){
        self.count += 1
        self.label.text = "\(self.count)"
    }


}

