//
//  pick interest.swift
//  project 1
//
//  Created by Nini Ola on 11/14/21.
//

import Foundation
import SwiftUI

struct pickinterest : View {
    var body: some View {
        ZStack
            { let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                
                gradient.opacity(0.70)
                    .edgesIgnoringSafeArea(.all)
                VStack{
                    Text("Pick Interest")
                    ppickinterest()
                    padding()
                    ppickinterest()
                    Spacer()
                    ppickinterest()
                    Spacer()
            
                
            }
        }
    }
}
struct ppickinterest : View {
    var body: some View {
        NavigationView{
        HStack{
            NavigationLink(destination:ntentView()){
            Image("beauty1")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius:10))
                .overlay
            {
                
                    RoundedRectangle(cornerRadius:5).stroke(.blue, lineWidth: 10)
            }
            }
        
        Spacer()
            
        
            NavigationLink(destination: ntentView()){
            Image("workout")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius:5))
                .overlay
                {
                    RoundedRectangle(cornerRadius:10).stroke(.blue, lineWidth: 10)
                }
            }
        
        Spacer()
       
            NavigationLink(destination: ntentView()){
            Image("restaurant")
                .resizable()
                .frame(width: 100, height: 100)
                .clipShape(RoundedRectangle(cornerRadius:5))
                .overlay
                {
                    RoundedRectangle(cornerRadius:10).stroke(.blue, lineWidth: 10)
          }
            }
            
    }
}
    }
}

struct pickinterest_Previews: PreviewProvider {
    static var previews: some View {
        pickinterest()
    }
}
