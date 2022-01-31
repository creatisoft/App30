//
//  ContentView.swift
//  App30
//
//  Created by Christopher on 1/30/22.
//  http://www.creatisoft.com

import SwiftUI

struct ContentView: View {
    
    @State var myPassword = ""
    @State var successText = " "
    
    var body: some View {
        
        
        VStack {
            
            Text("Login System 1.0")
                .padding(.all)
            
            
            SecureField("Enter Password", text: $myPassword)
                .padding([.top, .leading, .trailing])
            
     
            Button(action: loginNow) {
                
                Text("Login")
            
            }
            .padding(.all)
            
            Text(successText)
            
            
        }.frame(width: 250, height: 200, alignment: .center)
    }
    
    func loginNow(){
        
        if myPassword == "welcome"{
            
            successText = "Login Successful"
            
        }
        
        
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
