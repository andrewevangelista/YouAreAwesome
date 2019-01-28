 //
//  ViewController.swift
//  You Are Awesome!
//
//  Created by Andrew on 1/10/19.
//  Copyright © 2019 Andrew Evangelista. All rights reserved.
//

import UIKit
import AVFoundation
 
 
class ViewController: UIViewController {

    @IBOutlet weak var awesomeImage: UIImageView!
    
    
    @IBOutlet weak var messageLabel: UILabel!
    var awesomePlayer = AVAudioPlayer()
    
    var Index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    
    
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
        
        

        var newIndex: Int //declares but doesn't initialize newIndex
        
        repeat {
            newIndex = Int.random(in:0..<messages.count)
        } while newIndex == Index
        
        Index = newIndex
        messageLabel.text = messages[Index]
        
        repeat {
            newIndex = Int.random(in:0..<numberOfImages)
        } while imageIndex == newIndex
        
        imageIndex = newIndex
        
        
        awesomeImage.image = UIImage(named:"image\(imageIndex)")
        
        
        //get a new sound
        repeat {
            newIndex = Int.random(in:0..<numberOfSounds)
        } while soundIndex == newIndex
        
        soundIndex = newIndex
        
        
        var soundName = "sound\(soundIndex)"
        
        
        if let sound = NSDataAsset(name: soundName) {
            
            do {
                try awesomePlayer = AVAudioPlayer(data: sound.data)
                awesomePlayer.play()
            } catch {
                print("Error: Data in \(soundName) couldn't be played as sound.")
            }
        }else {
            print("Error: File \(soundName) didn't load." )
        }
        
        
      
        
    }
    
    
    
    
 }

 
