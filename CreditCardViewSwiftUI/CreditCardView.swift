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
    
    let name: String
    let expires: String
    
    var body: some View {
        VStack(alignment: .leading) {
            
            HStack(alignment: .top){
                Image(systemName: "checkmark.circle.fill")
                    .foregroundColor(Color.white)
                Spacer()
                Text("Visa")
                    .foregroundColor(Color.white)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
            }
            
            Spacer()
            Text("**** **** **** 1234")
                .foregroundColor(.white)
                .font(.system(size: 32))
            Spacer()
            
            HStack{
                VStack(alignment: .leading){
                    Text("Card Holder Name")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(name)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                Spacer()
                VStack {
                    Text("Expires")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.gray)
                    Text(expires)
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                }
            }
              } .frame(width: 300, height: 200)
                 .padding()
                .background(LinearGradient(gradient: Gradient(colors: [Color.pink, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing))
                .cornerRadius(15)
        
    }
}

struct CreditCardBack: View {
    
    let cvv: String
    
    var body: some View {
        VStack {
            
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 20)
                .padding([.top])
            
                Spacer()
            HStack {
                Text(cvv)
                    .foregroundColor(.black)
                    .rotation3DEffect(
                        .degrees(180),
                        axis: (x: 0.0, y: 1.0, z: 0.0))
                    .padding(5)
                    .frame(width: 100, height: 20)
                    .background(Color.white)
                Spacer()
                        
                        
            }.padding()
            
              } .frame(width: 300, height: 200)
                .background(LinearGradient(gradient: Gradient(colors: [Color.black, Color.pink]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(15)
        
    }
}


struct CreditCardView_Previews: PreviewProvider {
    static var previews: some View {
        CreditCardView<CreditCardBack>(content: { CreditCardBack(cvv: "123") })
    }
}
