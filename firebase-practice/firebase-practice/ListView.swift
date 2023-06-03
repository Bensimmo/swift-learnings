//
//  ListView.swift
//  firebase-practice
//
//  Created by Benjamin Simpson on 27/5/2023.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


struct ListView: View {
    
    @EnvironmentObject var dataManager: DataManager
    @State private var showPopUp = false

    var body: some View {
        VStack{
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
               
            }
        }
       
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(DataManager())
    }
}
