//
//  ListView.swift
//  firebase-practice
//
//  Created by Benjamin Simpson on 27/5/2023.
//

import SwiftUI
import Firebase


struct ListView: View {
    
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopUp = false

    var body: some View {
        NavigationView{
            List(dataManager.dogs, id: \.id) {dog in
                Text(dog.breed)
            }
            .navigationTitle("Dogs")
            .navigationBarItems(trailing: Button(action: {
                showPopUp.toggle()
                
            }, label:{
                Image(systemName: "plus")
            }))
            .sheet(isPresented: $showPopUp){
                NewDogView()
            }
            
            Button(action: {
                Auth.auth().signOut
            }, label:{
                Text("Sign Out")
            })
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(DataManager())
    }
}
