//
//  ViewController.swift
//  Xylophone
//

//

import UIKit
//import library in order to use AVAudioPlayer
import AVFoundation


class ViewController: UIViewController, AVAudioPlayerDelegate {
    // Create global instance for audio player
    var audioPlayer: AVAudioPlayer!
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        //Although the music buttons have the same IBAction, the tag property differentiates each button
        //This entire code within this function is reponsible for playing sound at button press
        //This is the space where I create & play the url for each of the sound files.
        //bundles are used to locate and use other resources, in this case use a URL to play sound files
        
        var soundList = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
        let soundURL: URL? = Bundle.main.url(forResource: soundList[sender.tag - 1], withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        }
        catch {
            print(error.localizedDescription)
        }
        
        audioPlayer.play()
            
    }
        
}
    
  



