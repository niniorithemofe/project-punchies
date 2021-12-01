//
//  create account.swift
//  project 1
//
//  Created by Nini Ola on 11/12/21.
//

import SwiftUI

struct CreateAccount: View {
    
    @State var firstName = ""
    @State var lastName = ""
    @State var password = ""
    @State var passwordAgain = ""
    
    
    var body: some View {
        
     
        NavigationView{
              
            ZStack {
                
                LinearGradient(colors: [Color.purple, Color.blue], startPoint:.center, endPoint:.trailing)
                    .opacity(0.35)
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack{
                    Form{
                        
                        Section{
                            
                            TextField("First Name", text: $firstName)
                            
                            TextField("Last Name", text: $lastName)
                            
                            
                        }
                        
                        Section(footer: Text("Your  password must be at least 8 characters long.")) {
                            
                            
                            SecureField("Create password", text: $password)
                            
                            SecureField("Confirm Password", text: $passwordAgain)
                            
                            
                            
                            
                        }
                        
                        Section(header: Text("")) {
                            
                            TextField(" E-mail", text: $firstName)
                            TextField("Phone Number", text: $firstName)
                            
                            TextField("Zip Code", text: $firstName)
                            
                            
                            
                        }
                        
                        
                        Toggle(isOn: /*@PLACEHOLDER=Is On@*/.constant(true)) {
                            Text("I Agree to Terms & Conditions")
                        }
                        
                    }
                    
                    NavigationLink (destination: pickinterest()){
                        Text("Sign Up")
                            .frame(width: 200, height: 50, alignment: .center)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                        
                        
                        
                    
                
                        .padding()
                    
                    
                
               
                .navigationTitle("Create your Account")
                
                }
            }
        }
        .foregroundColor(Color.purple)
    }
    }
}

struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
       CreateAccount()
            .preferredColorScheme(.light)
    }
}
