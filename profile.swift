//
//  profile.swift
//  project 1
//
//  Created by Nini Ola on 11/12/21.
//

import Foundation
//
//  ContentView.swift
//  Profile
//
//  Created by Naeema Muhammad on 11/4/21.
//

import SwiftUI

struct ContentVi: View {
    
    @State var username: String = ""
    @State private var isPrivate: Bool = true
    @State private var notificationsEnable:Bool = false
    @State private var previewIndex = 0
    var previewOptions = ["Always", "When Unlocked", "Never"]
    
    
    var body: some View {
        
        NavigationView{
            ZStack
                { let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                    
                    gradient.opacity(0.70)
                        .edgesIgnoringSafeArea(.all)
            
            Form {
                
                Section {
                    
                    VStack {
                        Image("Micheal")
                            .resizable()
                            .frame(width: 65, height: 65)
                            .font(.system(size: 50))
                            .foregroundColor(.purple)
                        
                        VStack(alignment:.leading){
                            Button("Micheal Tiddle"){
                                
                            }.font(.callout)
                            Text("Signed in as Micheal Tiddle")
                                .font(.caption)
                                .foregroundColor(.secondary)
                        }
                    }
                    
                }
                
                Section{
                    VStack{
                        Image(systemName: "lock.iphone")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.cyan)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex,label: Text("Account Info")){
                        }

                    }
                    
                    NavigationLink(destination: PunchCards()) {
                        VStack {
                            Text("Punch Card")
                            Image(systemName: "square.grid.3x3.square")
                                                        .frame(width: 30, height: 30)
                                                        .foregroundColor(.cyan)
                                                        .background(Color.white)
                                                    .clipShape(RoundedRectangle(cornerRadius: 5))
                        }
                    }

                    
                    VStack{
                        Image(systemName: "book.closed.circle.fill")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.cyan)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex,label: Text("Favorites")){
                        }
                    }
                    
                    VStack{
                        Image(systemName: "clock.fill")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.cyan)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex,label: Text("Visit History")){
                        }
                    }
                    
                    VStack{
                        Image(systemName: "chevron.right.square.fill")
                            .frame(width: 30, height: 30)
                            .foregroundColor(.cyan)
                            .background(Color.white)
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                        Picker(selection: $previewIndex,label: Text("Log Out")){
                        }
                    }
                }
                
                .navigationBarTitle("Account Info")
                
            }
                }
        }
    }
    }










struct ContentVi_Previews: PreviewProvider {
    static var previews: some View {
        ContentVi()
        
    }
}




//Link gives you the ability to access a third part website
//START_MENU_TOKEN@*Text("" creating button)

