//
//  ContentView.swift
//  firebase-practice
//
//  Created by Benjamin Simpson on 26/5/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(.cyan.gradient)
                
            VStack(spacing: 10) {
                Text("Welcome")
                    .padding(.bottom, 10.0)
                    .font(.system(size: 25))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white).offset(x: -96)
                TextField("Email",text:$email)
                    .padding(10.0)
                    .frame(height: 40.0)
                    .background(.white).cornerRadius(5).foregroundColor(.white).textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                    }
                
                TextField("Password",text:$password)
                    .padding(10.0)
                    .frame(height: 40.0)
                    .background(.white).cornerRadius(5).foregroundColor(.white).textFieldStyle(.plain)
                    .placeholder(when: email.isEmpty){
                        Text("Email")
                            .foregroundColor(.white)
                            .bold()
                    }
               
            }.frame(width:300)

        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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
