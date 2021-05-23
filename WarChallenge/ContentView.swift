//
//  ContentView.swift
//  WarChallenge
//
//  Created by Rachit on 14/05/21.
//

import SwiftUI

struct ContentView: View {

    @State private var playercard = "card2"
    @State private var cpucard = "card7"
    @State private var playerscore = 0
    @State private var cpuscore = 0
    
    var body: some View {
        ZStack {
            
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            VStack{
                
                Image("logo")
                
                Spacer()
                
                HStack(spacing: 20){
                    Image(playercard)
                    Image(cpucard)

                }
                
                Spacer()
                Button(action: {
                    let playerrand = Int.random(in: 2...14)
                    let cpurand = Int.random(in: 2...14)
                    playercard = "card" + String(playerrand)
                    cpucard = "card" + String(cpurand)
                    
                    if playerrand > cpurand {
                        playerscore += 1
                        
                    }
                    else if cpurand > playerrand {
                        cpuscore += 1
                    }else{
                        playerscore += 1
                        cpuscore += 1
                    }
                    
                }) {
                    Image("dealbutton")
                }
                
                
                Spacer()
                
                HStack(spacing: 50){
                    VStack{
                        Text("Player")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .padding()
                        
                        Text("\(playerscore)")
                            .font(.title)
                            .foregroundColor(Color.white)
                    }
                    VStack{
                        Text("CPU")
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(.white)
                            .padding()
                        
                        Text("\(cpuscore)")
                            .font(.title)
                            .foregroundColor(Color.white)
                        
                    }
                    
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
