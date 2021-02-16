//
//  TextFieldView.swift
//  CreditCardViewSwiftUI
//
//  Created by Page Kallop on 2/16/21.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var nameField: String = ""
    @State private var numberField: String = ""
    @State private var securityCode: String = ""
    
    var body: some View {
        VStack{
            TextField("Name", text: $nameField)
                .padding()
                .frame(width: 300, height: 35)
                .background(Color.black.opacity(0.06))
                .cornerRadius(10)
                .padding()
            TextField("Credit Card Number", text: $numberField)
                .padding()
                .frame(width: 300, height: 35)
                .background(Color.black.opacity(0.06))
                .cornerRadius(10)
                .padding()
            TextField("Security Code", text: $securityCode)
                .padding()
                .frame(width: 300, height: 35)
                .background(Color.black.opacity(0.06))
                .cornerRadius(10)
                .padding()
        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
