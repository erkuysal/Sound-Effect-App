//
//  ContentView.swift
//  Sound Effects
//
//  Created by Feyzullah Uysal on 29.02.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack{
                Button("eman") {
                    playSound(audioName: "eman")
                }
                .frame(width: 100.0, height: 100.0)
                .background()
                
                Button("tick") {
                    playSound(audioName: "tick")
                }
                .frame(width: 100.0, height: 100.0)
                
                Button("wrong") {
                    playSound(audioName: "wrong")
                }
                .frame(width: 100.0, height: 100.0)
            }
            
            .padding()
            
            HStack{
                Button("m-suspense") {
                    playSound(audioName: "m-suspense")
                }
                .frame(width: 100.0, height: 100.0)
                
                Button("m-timer") {
                    playSound(audioName: "m-timer")
                }
                .frame(width: 100.0, height: 100.0)
                
                Button("m-right") {
                    playSound(audioName: "m-right")
                }
                .frame(width: 100.0, height: 100.0)
            }
            
            .padding()
            
            HStack{
                Button("m-audience") {
                    playSound(audioName: "eman")
                }
                .frame(width: 100.0, height: 100.0)
                
                Button("rahatsiz") {
                    playSound(audioName: "rahatsiz")
                }
                .frame(width: 100.0, height: 100.0)
                
                Button("m-intro") {
                    playSound(audioName: "m-intro")
                }
                .frame(width: 100.0, height: 100.0)
            }
            
            .padding()
            
            HStack{
                Button("Button") {
                        playSound(audioName: "eman")
                    
                }
                .frame(width: 100.0, height: 100.0)
                
                Button("Button") {
                    playSound(audioName: "eman")
                }
                .frame(width: 100.0, height: 100.0)
                
                Button("Button") {
                    playSound(audioName: "eman")
                }
                .frame(width: 100.0, height: 100.0)
            }
            
            
        }
       
    }
}

#Preview {
    ContentView()
}
