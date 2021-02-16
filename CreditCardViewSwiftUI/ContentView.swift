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
    
    @State private var nameField: String = ""
    @State private var expires: String = ""
    @State private var cvv: String = ""
    
    var body: some View {
        VStack{
        CreditCardView {
           
                VStack {
               
                    Group {
                        if flipped {
                            CreditCardBack(cvv: cvv)
                        } else {
                            CreditCardFront(name: nameField, expires: expires)
                        }
                    }
                    .shadow(color: Color(#colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)), radius: 10, x: 9, y: 9)
                    .shadow(color: Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)), radius: 10, x: -9, y: -9)
                    
                }.rotation3DEffect(
                    .degrees(degrees),
                    axis: (x: 0.0, y: 1.0, z: 0.0)
     
                )
              
                
            }.onTapGesture {
                withAnimation {
                    degrees += 180
                    flipped.toggle()
            
                }
            }
            
            TextField("Name", text: $nameField)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top,.leading,.trailing])
            
            TextField("Expiration", text: $expires)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top, .leading, .trailing])
           
            TextField("CVV", text: $cvv) { (editingChanged) in
                    withAnimation {
                        degrees += 180
                        flipped.toggle()
                   
                      }
                    } onCommit: {}
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding([.top, .leading, .trailing])
            
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
