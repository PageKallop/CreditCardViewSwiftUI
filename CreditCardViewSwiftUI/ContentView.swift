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
        CreditCardView {
            
            VStack {
                Group {
                    if flipped {
                        CreditCardBack()
                    } else {
                        CreditCardFront()
                    }
                  }
                }.rotation3DEffect(
                    .degrees(degrees),
                    axis: (x: 1.0, y: 0.0, z: 0.0)
                    
                )
            
        }.onTapGesture {
            withAnimation {
            degrees += 180
            flipped.toggle()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
