//
//  CrewlApp.swift
//  Crewl
//
//  Created by NomoteteS on 28.11.2022.
//

import SwiftUI

@main
struct CrewlApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    var body: some Scene {
        WindowGroup {
            NavigationView{
                PhoneTextField()
            }
        }
    }
}
