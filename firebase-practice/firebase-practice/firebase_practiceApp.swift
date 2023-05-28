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
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
