//
//  NewDogView.swift
//  firebase-practice
//
//  Created by Benjamin Simpson on 29/5/2023.
//

import SwiftUI

struct NewDogView: View {
    @EnvironmentObject var dataManager: DataManager
    @State private var newDog = ""
    
    var body: some View {
        VStack{
            TextField("Dog", text: $newDog)
            
            Button{
                dataManager.addDog(dogBreed: newDog)
            } label:{
                Text("Save")
            }
        }.padding()
    }
}

struct NewDogView_Previews: PreviewProvider {
    static var previews: some View {
        NewDogView()
    }
}
