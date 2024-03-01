//
//  ContentView.swift
//  Sound Effects
//
//  Created by Feyzullah Uysal on 29.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       
        VStack 
        {
            HStack{
                
                Button("eman")
                {
                SoundManager.shared.playSound(audioName: "eman")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Button("tick")
                {
                SoundManager.shared.playSound(audioName: "tick")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Button("wrong")
                {
                SoundManager.shared.playSound(audioName: "wrong")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
            } // Add more buttons to play other sounds as needed
            
            .padding(20)
            
            HStack{
                
                Button("m-intro")
                {
                SoundManager.shared.playSound(audioName: "m-intro")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Button("m-suspense")
                {
                SoundManager.shared.playSound(audioName: "m-suspense")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Button("m-timer")
                {
                SoundManager.shared.playSound(audioName: "m-timer")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
            }
            
            .padding(20)
            
            HStack{
                
                Button("m-right")
                {
                SoundManager.shared.playSound(audioName: "m-right")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Button("m-audience")
                {
                SoundManager.shared.playSound(audioName: "m-audience")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
                Button("rahatsiz")
                {
                SoundManager.shared.playSound(audioName: "rahatsiz")
                }
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                
            }
        }
       
    }
}

#Preview {
    ContentView()
}
