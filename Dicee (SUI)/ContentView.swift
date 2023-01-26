//
//  ContentView.swift
//  Dicee (SUI)
//
//  Created by Eduard Tokarev on 26.01.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            HStack(alignment: .center) {
                
                Spacer()
                
                Image("DiceSix")
                    .frame(width: 120, height: 120, alignment: .center)
                
                Spacer()
                
                Image("DiceOne")
                    .frame(width: 120, height: 120,  alignment: .center)
                
                Spacer()
            }
            
            VStack {
                Image("DiceeLogo")
                    .frame(maxHeight: .infinity)
                
                Button("Roll") {
                    
                }
                .font(.system(size: 30))
                .foregroundColor(.white)
                .frame(width: 125, height: 60, alignment: .center)
                .background(Color(UIColor(red: 144/255, green: 25/255, blue: 29/255, alpha: 1)))
                .frame(maxHeight: .infinity)
            }
            .edgesIgnoringSafeArea(.all)
        }
        .background(
            Image("GreenBackground")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
