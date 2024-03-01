//
//  GridView.swift
//  Sound Effects
//
//  Created by Feyzullah Uysal on 1.03.2024.
//

import SwiftUI

struct GridButton: View {
    var imageName: String
    var buttonText: String
    var soundName: String
    
    var body: some View {
        Button(action: {
            SoundManager.shared.playSound(soundName: self.soundName)
            print(self.buttonText)
        }) {
            Image(imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .padding(5)
                .background(Color.white)
                .cornerRadius(8)
        }
        Text(soundName)
            .font(.caption)
            .foregroundColor(.black)
    }
}

