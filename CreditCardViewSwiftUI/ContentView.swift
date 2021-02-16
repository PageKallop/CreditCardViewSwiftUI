//
//  ContentView.swift
//  CreditCardViewSwiftUI
//
//  Created by Page Kallop on 2/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var degrees: Double = 0
    @State private var flipped: Bool = false
    
    var body: some View {
        VStack{
        CreditCardView {
           
            VStack {
                Text("Enter Card Info")
                    .italic()
                    .underline()
                    .font(.custom("Arial", size: 30))
                    .padding(30)
                VStack {
               
                    Group {
                        if flipped {
                            CreditCardBack()
                        } else {
                            CreditCardFront()
                        }
                    }
                    .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 9, y: 9)
                    .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: -9, y: -9)
                    
                }.rotation3DEffect(
                    .degrees(degrees),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
     
                )
                TextFieldView()
                    .padding(.top)
                
            }.onTapGesture {
                withAnimation {
                    degrees += 180
                    flipped.toggle()
            
                }
            }
            
        }
        }.frame(width: 375, height: 850)
        .background(Color(#colorLiteral(red: 0.9999960065, green: 1, blue: 1, alpha: 1)))
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
