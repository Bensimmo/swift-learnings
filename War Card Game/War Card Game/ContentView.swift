//
//  ContentView.swift
//  War Card Game
//
//  Created by Benjamin Simpson on 24/5/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        
        ZStack{
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                    .imageScale(.large)
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal()
                } label: {
                    Image("button")
                }
                       
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .padding(.bottom, 10.0)
                            .font(.headline)
                        Text(String(playerScore))
                            .font(.title)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .padding(.bottom, 10.0)
                            .font(.headline)
                        Text(String(cpuScore))
                            .font(.title)
                    }
                    Spacer()
                    
                }.foregroundColor(.white)
            }
        }
        
    }
    
     func deal() {
         
     let playerCardNumber = Int.random(in: 2...14)
     let cpuCardNumber = Int.random(in: 2...14)
         
        playerCard = "card" + String(playerCardNumber)
        cpuCard = "card" + String(cpuCardNumber)
         
         if playerCardNumber > cpuCardNumber{
             playerScore +=  1
             
         } else if cpuCardNumber > playerCardNumber{
             cpuScore +=  1
         }else {
             playerScore += 1
             cpuScore += 1
         }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
