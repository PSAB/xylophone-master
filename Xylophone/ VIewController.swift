//
//  ViewController.swift
//  Xylophone
//

//

import UIKit
//import library in order to use AVAudioPlayer
import AVFoundation


class ViewController: UIViewController{
    // Create global instance for audio player
    
    var player: AVAudioPlayer?
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }



    @IBAction func notePressed(_ sender: UIButton) {
        //Although the music buttons have the same IBAction, the tag property differentiates each button
        var soundArray = ["note1", "note2", "note3", "note4", "note5", "note6", "note7"]
        let url = Bundle.main.url(forResource: "note1", withExtension: "wav")
        
        do {
            try AVAudioSession.sharedInstance().setCategory(AVAudioSessionCategoryPlayback)
            try AVAudioSession.sharedInstance().setActive(true)
            
            
            
            /* The following line is required for the player to work on iOS 11. Change the file type accordingly*/
            player = try AVAudioPlayer(contentsOf: url!)
            
            /* iOS 10 and earlier require the following line:
             player = try AVAudioPlayer(contentsOf: url, fileTypeHint: AVFileTypeMPEGLayer3) */
            
            guard let player = player else { return }
            
            player.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
            
    }
        
}
    
  



