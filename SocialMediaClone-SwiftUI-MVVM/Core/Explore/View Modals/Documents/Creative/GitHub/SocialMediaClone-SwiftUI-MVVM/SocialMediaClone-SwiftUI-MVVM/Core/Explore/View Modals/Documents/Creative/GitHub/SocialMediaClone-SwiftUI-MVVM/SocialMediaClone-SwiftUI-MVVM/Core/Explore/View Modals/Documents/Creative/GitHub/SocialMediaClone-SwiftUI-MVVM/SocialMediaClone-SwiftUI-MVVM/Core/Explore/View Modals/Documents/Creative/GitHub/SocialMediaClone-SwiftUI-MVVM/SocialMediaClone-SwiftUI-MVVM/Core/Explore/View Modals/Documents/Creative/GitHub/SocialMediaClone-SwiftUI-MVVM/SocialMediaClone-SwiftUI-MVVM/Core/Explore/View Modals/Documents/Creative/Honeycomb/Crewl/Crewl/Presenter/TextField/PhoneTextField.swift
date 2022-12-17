//
//  PhoneTextField.swift
//  Crewl
//
//  Created by NomoteteS on 2.12.2022.
//

import SwiftUI

struct PhoneTextField: View {
    
    @State var phoneNumber = ""
    @State var y : CGFloat = 400
    @State var countryCode = ""
    @State var countryFlag = ""
    var body: some View {
        ZStack {
            HStack(spacing: 25)  {
                
                //MARK: - Country Flag
                Text(countryCode.isEmpty ? "🇨🇦 +1" : "\(countryFlag) +\(countryCode)")
                    .frame(width:65, height: 47)
                    .background(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color("MainTitle-Button-Stroke"))
                            .frame(width: 68,height: 47)
                            .background(Color.white)
                    )
                    .onTapGesture {
                        withAnimation (.spring()) {
                            self.y = 0
                        }
                    }
                
                //MARK: - Phone Number
                TextField("Telefon Numarası", text: $phoneNumber)
                    .frame(width: 210, height: 47)
                    .keyboardType(.decimalPad)
                    .background((
                        RoundedRectangle(cornerRadius: 6)
                        .stroke(Color("MainTitle-Button-Stroke"))
                        .background(Color.white)).frame(width: 230, height: 47))
            }
            
            BottomSheetFlag(countryCode: $countryCode, countryFlag: $countryFlag, y: $y)
                .offset(y: y)            
        }
    }
    
}

struct PhoneTextField_Previews: PreviewProvider {
    static var previews: some View {
        PhoneTextField()
    }
}
