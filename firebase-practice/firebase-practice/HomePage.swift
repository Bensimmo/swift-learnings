//
//  HomePage.swift
//  firebase-practice
//
//  Created by Benjamin Simpson on 2/6/2023.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth




struct HomePage: View {
    
    

    let firebaseAuth = Auth.auth()
    
    
    func logOut(){
        do {
          try firebaseAuth.signOut()

        } catch let signOutError as NSError {
          print("Error signing out: %@", signOutError)
        }
    }
    
    var body: some View {
        NavigationStack{
            List{
                NavigationLink("Dogs"){
                    ListView()
                }
                Button{
                    logOut()
                }label:{
                    Text("Sign Out")
                    }
            }
        }
        
       
    }
}

struct HomePage_Previews: PreviewProvider {
    static var previews: some View {
        HomePage().environmentObject(DataManager())
    }
}
