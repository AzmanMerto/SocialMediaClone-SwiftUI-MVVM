//
//  InputTextField.swift
//  Crewl
//
//  Created by NomoteteS on 4.12.2022.
//

import SwiftUI

struct InputTextField: View {
    let placeholder: String
    @Binding var text: String
    var body: some View {
            HStack{
                TextField(placeholder, text: $text)
                    .frame(width: 327, height: 47)
                    .padding(.leading)
                    .background {
                        RoundedRectangle(cornerRadius:4).stroke(Color("MainTitle-Button-Stroke"))
                            .background(Color.white)
                    }
            }.padding(.horizontal)
        
    }
}

struct InputTextField_Previews: PreviewProvider {
    static var previews: some View {
        InputTextField(placeholder: "Email", text: .constant(""))
    }
}
