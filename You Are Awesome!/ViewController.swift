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
    var index = 0
    
    
    //Code below executes when the view loads
    override func viewDidLoad() { //Comment 2
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("The View Loaded!")
        
    }


    @IBAction func showMessagePressed(_ sender: UIButton) {
        
        let messages = ["You Are Awesome!",
                        "You Are Great!",
                        "You Are Fantastic!",
                        "When the Genius Bar Needs Help, They Call You",
                        "You Brighten My Day!",
                        "You are da bomb!",
                        "Hey, Fabulous!",
                        "You Are Tremendous!",
                        "You've Got the Design Skills of Jony Ive!",
                        "I Can't Wait to Download Your App"]
        
        
        messageLabel.text = messages.randomElement()!
        
        
        
        
        
//        messageLabel.text = messages[index]
//
//        if index == messages.count - 1 {
//            index = 0
//        }else {
//
//        index = index + 1
        
            
        
        
//        let message1 = "You Are Awesome!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//
//
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        }else {
//            messageLabel.text = message1
//
//        }
        
    }
    
    
    
    
 }

 }
