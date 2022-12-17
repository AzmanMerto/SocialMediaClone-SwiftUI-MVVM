//
//  LocationServiceView.swift
//  Crewl
//
//  Created by NomoteteS on 3.12.2022.
//

import SwiftUI

struct LocationServiceView: View {
    @State var tag:Int? = nil
    @ObservedObject var locationManager = LocationManager.shared
    
    var body: some View {
        if locationManager.userLocation == nil{
            ZStack {
                NavigationLink("", destination: NotificationServiceView().navigationBarHidden(true), tag: 1, selection: $tag)
                
                //MARK: - Image & Text
                Color("MainBackground")
                    .ignoresSafeArea()
                VStack {
                    Image("emote_fox_location")
                        .resizable()
                        .frame(width: 194, height: 221)
                    
                    VStack(spacing: 10) {
                        Text("Özel indirimler kazan")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(Color("MainTitle-Button-Stroke"))
                        
                        Text("Etrafındaki etkinlikleri sana göstermemiz için lokasyon izni vermen gerekiyor. Gerekmiyor mu?")
                            .frame(width: 250)
                            .font(.footnote)
                            .foregroundColor(Color("SubtitleDarkGray"))
                    }.multilineTextAlignment(.center)
                        .padding(.bottom)
                    
                    // MARK: - Skip Request Location Button
                    HStack(spacing: 15){
                        NavigationLink {
                            NotificationServiceView()
                                .navigationBarHidden(true)
                        } label: {
                            Text("Daha sonra")
                        }.buttonStyle(NotificationOne())
                        
                        // MARK: - Request Location Button
                        Button {
                            LocationManager.shared.requestLocation()
                            self.tag = 1
                        } label: {
                            Text("İzin ver")
                        }.buttonStyle(NotificationTwo())
                    }.padding(.vertical)
                }
            }
        }
        else if locationManager.userLocation != nil {
            NotificationServiceView()
        }
    }
}

struct LocationServiceView_Previews: PreviewProvider {
    static var previews: some View {
        LocationServiceView()
    }
}
