 //
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Andrew on 1/10/19.
//  Copyright © 2019 Andrew Evangelista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    
    //Code below executes when the view loads
    override func viewDidLoad() { //Comment 2
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The View Loaded!")
    }


    @IBAction func showMessagePressed(_ sender: UIButton) {
        messageLabel.text = "You Are Awesome!"
        messageLabel.textColor = UIColor.red
        
    }
    
    @IBAction func showAnotherMessagePressed(_ sender: Any) {
        messageLabel.text = "You Are Great!"
        messageLabel.textColor = UIColor.blue
    }
    
    
 }

