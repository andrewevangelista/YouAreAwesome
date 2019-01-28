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
    
    @IBOutlet weak var soundSwitch: UISwitch!
    
    
    
    
    var awesomePlayer = AVAudioPlayer()
    
    var index = -1
    var imageIndex = -1
    var soundIndex = -1
    let numberOfImages = 10
    let numberOfSounds = 6
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("The View Loaded!")
        
    }
 
    func nonRepeatingRandom(lastNumber: Int, maxValue: Int) -> Int {
        var newIndex: Int
        repeat {
            newIndex = Int.random(in:0..<maxValue)
        } while lastNumber == newIndex
        
        return newIndex
        
    }
    
    
    func playSound(soundName: String, audioPlayer: inout AVAudioPlayer){
      
        if let sound = NSDataAsset(name: soundName) {
            
            do {
                try audioPlayer = AVAudioPlayer(data: sound.data)
                audioPlayer.play()
            } catch {
                print("Error: Data in \(soundName) couldn't be played as sound.")
            }
        }else {
            print("Error: File \(soundName) didn't load." )
        }
        
        
    }
    
    
    @IBAction func soundSwitchPressed(_ sender: Any) {
        
            if soundSwitch.isOn == false && soundIndex != -1{
                   awesomePlayer.stop()
            
            }
        
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
        
        

       //Show Message
        index = nonRepeatingRandom(lastNumber: index, maxValue: messages.count)
        messageLabel.text = messages[index]
        
        
        //Show Image
        imageIndex = nonRepeatingRandom(lastNumber: imageIndex, maxValue: numberOfImages)
        awesomeImage.image = UIImage(named:"image\(imageIndex)")
        
        
        //get a new sound
//        if soundSwitch.isOn == true {
        if soundSwitch.isOn {
            
            soundIndex = nonRepeatingRandom(lastNumber: soundIndex, maxValue: numberOfSounds)
            
            
            //playsound
            let soundName = "sound\(soundIndex)"
            
                  playSound(soundName: soundName, audioPlayer: &awesomePlayer)
        }
        

        
        
        
      
        
    }
    
    
    
    
 }

 
