//
//  ContentView.swift
//  firebase-practice
//
//  Created by Benjamin Simpson on 26/5/2023.
//

import SwiftUI
import Firebase

struct LogInPage: View {
    
    @State private var email = ""
    @State private var password = ""
    @State private var userIsLoggedIn = false
    
    var body: some View {
        
        if userIsLoggedIn{
            HomePage()
        } else{
            content
        }
        
    }
    
    
    
    var content: some View{
        ZStack{
            Rectangle()
                .fill(.cyan.gradient)
            
            VStack(spacing: 10) {
                HStack{
                    Text("Welcome")
                        .padding(.bottom, 10.0)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Spacer()
                }
                
                TextField("Email",text:$email)
                    .padding(10.0)
                    .frame(height: 40.0)
                    .background(.white).cornerRadius(5).foregroundColor(.black).textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundColor(.black)
                            .bold()
                    }
                
                SecureField("Password",text:$password)
                    .padding(10.0)
                    .frame(height: 40.0)
                    .background(.white).cornerRadius(5).foregroundColor(.black).textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundColor(.black)
                            .bold()
                    }
                Button{
                    register()
                } label: {
                    Text("Sign Up")
                }
                .padding(10.0)
                .frame(width: 300)
                .foregroundColor(.white)
                .background(.blue.opacity(0.6))
                .cornerRadius(5)
                .padding(.top, 10)
                
                Button{
                    logIn()
                } label: {
                    Text("Already got an account? Sign in")
                }
                .foregroundColor(.white)
                .padding(.top, 30)
                
            }
            .frame(width:300)
            .onAppear{
                Auth.auth().addStateDidChangeListener{auth, user in if user != nil{
                        userIsLoggedIn.toggle()
                    }
                }
            }
                
        }.ignoresSafeArea()
    }
    
    func register(){
        Auth.auth().createUser(withEmail: email, password: password){ result, error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
    }
    
    func logIn(){
        Auth.auth().signIn(withEmail: email, password: password){ result, error in
            if error != nil{
                print(error!.localizedDescription)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LogInPage()
    }
}

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {
            ZStack(alignment: alignment) {
                placeholder().opacity(shouldShow ? 1 : 0)
                self
        }
    }
}

