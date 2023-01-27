//
//  ContentView.swift
//  Dicee (SUI)
//
//  Created by Eduard Tokarev on 26.01.2023.
//

import SwiftUI

struct ContentView: View {
    private let diceArray = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    @State private var leftDicee: UIImage = #imageLiteral(resourceName: "DiceOne")
    @State private var rightDicee: UIImage = #imageLiteral(resourceName: "DiceOne")
    
    var body: some View {
        ZStack {
            HStack(alignment: .center) {
                Spacer()
                
                Image(uiImage: leftDicee)
                    .frame(width: 120, height: 120, alignment: .center)
                
                Spacer()
                
                Image(uiImage: rightDicee)
                    .frame(width: 120, height: 120,  alignment: .center)
                
                Spacer()
            }
            
            VStack {
                Image("DiceeLogo")
                    .frame(maxHeight: .infinity)
                
                Button("Roll") {
                    leftDicee = diceArray.randomElement() ?? UIImage()
                    rightDicee = diceArray.randomElement() ?? UIImage()
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
