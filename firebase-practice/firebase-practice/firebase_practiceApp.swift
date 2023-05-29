//
//  firebase_practiceApp.swift
//  firebase-practice
//
//  Created by Benjamin Simpson on 26/5/2023.
//

import SwiftUI
import Firebase

@main


struct firebase_practiceApp: App {
    
    @StateObject var dataManager = DataManager()
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(DataManager())
        }
    }
}
