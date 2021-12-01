//
//  signin.swift
//  project 1
//
//  Created by Nini Ola on 11/12/21.
//

import Foundation
//
//  signin.swift
//  homepage with nav
//
//  Created by Nini Ola on 11/10/21.
//

import Foundation
import SwiftUI
let LightGreyColor = Color(red: 239.0/244.0, green: 243.0/255.0, blue: 244.0/255.0)


let storedusername = "Anna"
let Storedpassword = "Anna"



struct Login: View {
    
   @State var username: String = ""
    @State var password: String = ""
    
    @State var authenticationDidFail: Bool = false
    @Binding var authenticationDidSucceed: Bool
    
    
    var body: some View {
        NavigationView{
        
        ZStack { let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                    
                    gradient.opacity(0.70)
                .edgesIgnoringSafeArea(.all)
            Image("Logo")
                .resizable()
                .frame(width: 350, height: 600)
            
            VStack {
            
            HelloText()
            
            UserrnameTextField(username: $username)
            PasswordSecurity(password: $password)
            if authenticationDidFail {
                Text("Infotmation is not correct. Try again.")
                    .offset(y: -10)
                    .foregroundColor(.red)
                
            }
        
                
                Button(action:
                        {
                    
                    if self.username == storedusername && self.password == Storedpassword { self.authenticationDidSucceed = true
                    } else {
                        self.authenticationDidFail = true
                        
                    }
                })
                {LoginButtonContent()
                }
                
                
                NavigationLink(destination:CreateAccount())
                {
                    Text("create account")
        
                }
                
                    
                
            }
                
            }
   
            
        }
        
        
        .padding()
            if authenticationDidSucceed {
                Text("Login succeeded!")
                    .font(.headline)
                    .foregroundColor(.green)
                
                
            }
       
    }
    }


struct Login_Previews: PreviewProvider {
    static var previews: some View {
        Login(authenticationDidSucceed:.constant(false))
    }
}

struct HelloText: View {
    var body: some View {
        Text("Hello you!")
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20.0)
    }
}

struct UserImage: View {
    var body: some View {
        Image("UserImage")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 150, height: 150)
            .clipped()
            .cornerRadius(150)
            .padding(.bottom, 75.0)
    }
}

struct LoginButtonContent: View {
    var body: some View {
        Text("LOGIN")
            .font(.headline)
            .foregroundColor(.white)
            .padding()
            .frame(width: 220, height: 60)
            .background(Color.black)
            .cornerRadius(35)
    }
}

struct UserrnameTextField: View {
    
    @Binding var username: String
    
    var body: some View {
        TextField("Username", text: $username)
            .padding()
            .background(LightGreyColor)
            .cornerRadius(5.0)
            .padding(.all,5.0)
        
    }
}
struct PasswordSecurity: View {
    
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
            .padding()
            .background(LightGreyColor)
            .cornerRadius(5.0)
            .padding(.all, 5.0)
    }
}


