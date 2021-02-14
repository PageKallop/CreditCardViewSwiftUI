//
//  CreditCardView.swift
//  CreditCardViewSwiftUI
//
//  Created by Page Kallop on 2/12/21.
//

import SwiftUI

struct CreditCardView<Content>: View where Content: View {
    
    var content: () -> Content
    
    var body: some View {
       
       content()
         
    }
}

struct CreditCardFront: View {
    
    var body: some View {
        VStack {
            Text("Front").foregroundColor(Color.white)
              } .frame(width: 300, height: 200)
                .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.black]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(15)
        
    }
}

struct CreditCardBack: View {
    
    var body: some View {
        VStack {
            Text("").foregroundColor(Color.white)
              } .frame(width: 300, height: 200)
                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.pink]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(15)
        
    }
}


struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView<CreditCardBack>(content: { CreditCardBack() })
    }
}
