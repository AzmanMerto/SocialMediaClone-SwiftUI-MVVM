//
//  SwiftUIView.swift
//  Crewl
//
//  Created by NomoteteS on 6.12.2022.
//

import SwiftUI

struct BottomSheetFlag: View {
    
    @Binding var countryCode : String
       @Binding var countryFlag : String
       @Binding var y : CGFloat

       var body: some View {

              
               GeometryReader { geo in
                   ZStack {
                       List(countryDictionary.sorted(by: <), id: \.key) { key , value in
                           
                           HStack {
                               Text("\(flag(country: key))")
                               Text("\(countryName(countryCode: key) ?? key)")
                               Spacer()
                               Text("+\(value)").foregroundColor(.secondary)
                           }
                           .background(Color.green)
                           .onTapGesture {
                               self.countryCode = value
                               self.countryFlag = flag(country: key)
                               withAnimation(.spring()) {
                                   self.y = 400
                               }
                           }
                       }
                   }
                   .padding(.bottom)
                   .frame(width: geo.size.width, height: 800)
                   .position(x: geo.frame(in: .global).midX, y: geo.frame(in: .global).maxY - 150)
                   
               }
           
       }

}
