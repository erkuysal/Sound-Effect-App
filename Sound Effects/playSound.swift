//
//  playSound.swift
//  Sound Effects
//
//  Created by Feyzullah Uysal on 29.02.2024.
//

import Foundation
import AVFoundation

var audioPlayer:AVAudioPlayer?

func playSound(audioName: String){
    
    if let player = audioPlayer, player.isPlaying {
        // Pause
        player.stop()
        print("Paused")
        
    } 
    else
    {
        // Play
        print("Playing sound!")
        //Btn.setImage(<#T##CIImage#>)   Place a paused image
        
        let source = Bundle.main.path(forResource: audioName, ofType: "wav")
        let url = URL(fileURLWithPath: source!)
        
        do {
            
            audioPlayer = try AVAudioPlayer(contentsOf: url)
            audioPlayer?.play()
            
        } 
        catch 
        {
            
            print("Can not play sound!")
            
        }
        
        
    }
    
}
