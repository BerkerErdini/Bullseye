//
//  ContentView.swift
//  Bullseye
//
//  Created by Berker Erdini on 6/8/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible = false
    @State private var sliderValue = 50.0
    @State private var game = Game()
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1")
                    .bold()
                Slider(value: $sliderValue, in: 1.0...100.0)
                Text("100")
                    .bold()
            }
            Button(action: {
                print("Hello, SwiftUI!")
                alertIsVisible = true
            }) {
                Text("Hit Me")
            }
            .alert(isPresented: $alertIsVisible, content: {
                let roundedValue = Int(sliderValue)
                
                return Alert(title: Text("Hi there!"), message: Text("The slider's value is \(roundedValue).\n" + "You scored \(game.points(sliderValue: roundedValue))"), dismissButton: .default(Text("Awesome")))
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
            
        ContentView()
            .previewLayout(.fixed(width: 568, height: 320))
        
    }
}
