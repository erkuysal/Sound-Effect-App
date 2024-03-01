//
//  SoundManager.swift
//  Sound Effects
//
//  Created by Feyzullah Uysal on 1.03.2024.
//

import Foundation
import AVFoundation

var audioPlayer:AVAudioPlayer?

class SoundManager {
    static let shared = SoundManager()
    
    let soundNames = ["eman", "tick", "wrong", "rahatsiz",
                      "m-intro", "m-right", "m-suspense", "m-timer",
                      "m-audience"]
    
    private init() {
        configureAudioSession()
    }
    
    private func configureAudioSession() {
        let audioSession = AVAudioSession.sharedInstance()
        do {
            try audioSession.setCategory(.playback, mode: .default, options: [.mixWithOthers, .duckOthers])
            try audioSession.setActive(true)
        } catch {
            print("Error configuring audio session: \(error.localizedDescription)")
        }
    }
    
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
    
    
    func playSound(atIndex index: Int) {
        guard index >= 0 && index < soundNames.count 
        else
        {
            print("Invalid sound index")
            return
        }

        let soundName = soundNames[index]

        guard let url = Bundle.main.url(forResource: soundName, withExtension: "wav")
        else
        {
            print("Sound file not found")
            return
        }

        do
        {
            let player = try AVAudioPlayer(contentsOf: url)
            player.play()
        }
        catch
        {
            print("Error playing sound: \(error.localizedDescription)")
        }
    }

}
