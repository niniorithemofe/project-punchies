//
//  location22.swift
//  project Punchies
//
//  Created by Nini Ola on 11/14/21.
//

import Foundation
import SwiftUI

let busiNameT = "Urban Soul Restaurant"
let busiContact = """
1535 Lafayette Street
Detroit, MI

Phone: (313) 344-9070
info@urbansoulrestaurant.com

"""
let busiBio = """
Urban Soul is a family style restaurant serving
Southern dishes in an inviting setting. Using
the freshest and finest ingredients to satisfy
your palette.

"""
let busiDes = "Business Description"

let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)


struct CoontentView: View {
    var body: some View {
        NavigationView{
        ZStack {
           
        
            gradient.opacity(0.30)
            .edgesIgnoringSafeArea(.all)
            .blur(radius: 25, opaque: false)
            
            
            
            VStack{
                
                RoundedRectangle(cornerRadius: 25, style: .continuous)
                    .foregroundColor(Color.white)
                    .frame(width: 350, height: 680, alignment:.center)
                    .clipShape(RoundedRectangle (cornerRadius: 25, style: .continuous))
                    .overlay{RoundedRectangle(cornerRadius: 25, style: .continuous).stroke(.black, lineWidth: 2)
                    }
                    .shadow(radius: 7)
                    
                
            }
            
            
            VStack{
                
                VStack{
                    HStack(alignment: .top) {
                        VStack(alignment: .leading) {
                            Text(verbatim: busiNameT)
                                .font(.headline)
                            
                            Text(verbatim: busiContact)
                                .foregroundColor(.secondary)
                                .font(.subheadline)
                               
                        }
                        
                    }.offset(x: -60, y: 70)
                    
                    
                    ScrollView {
                        // ImageCarouselView Will Go Here.
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                        }
                    }
                    
                    
                    VStack(alignment: .leading){
                        Text(verbatim: busiDes)
                            .font(.title)
                            .padding(.bottom)
                           
                        Text(verbatim: busiBio)
                            .font(.subheadline)
                            
                    }
                    
                    .frame(width: 300, height: 200, alignment: .center)
                    .padding(.all, 5.0)
                    .clipShape(RoundedRectangle (cornerRadius: 15, style: .continuous))
                
                    .overlay{RoundedRectangle(cornerRadius: 15, style: .continuous).stroke(.gray, lineWidth: 2)
                    }
                    
                    Spacer(minLength: 100)
                    
                    ZStack {
                        HStack() {
                            
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                            
                                .frame(width: 170, height: 45, alignment: .center)
                                .foregroundColor(Color.purple)
                                .opacity(0.85)
                                .clipShape(RoundedRectangle (cornerRadius: 25, style: .continuous))
                                .overlay{RoundedRectangle(cornerRadius: 25, style: .continuous).stroke(.black, lineWidth: 2)
                                }
                                .shadow(radius: 7)
                            
                            RoundedRectangle(cornerRadius: 25, style: .continuous)
                                .frame(width: 95, height: 45, alignment: .trailing)
                                .foregroundColor(Color.purple)
                                .opacity(0.85)
                                .clipShape(RoundedRectangle (cornerRadius: 25, style: .continuous))
                                .overlay{RoundedRectangle(cornerRadius: 25, style: .continuous).stroke(.black, lineWidth: 2)
                                }
                                .shadow(radius: 7)
                        }
                        
                        HStack(spacing: 120) {
                            
                            Button(action: {}) {
                                
                                Image(systemName: "text.bubble")
                                    .resizable()
                                    .frame(width: 45, height: 40, alignment: .center)
                                    .foregroundColor(Color.black)
                                    .offset(x: 29, y: 0)
                            }
                            
                            NavigationLink(destination: Home()){
                                Image(systemName: "location")
                                    .resizable()
                                    .frame(width: 40, height: 40, alignment: .trailing)
                                    .foregroundColor(Color.black)
                                    .offset(x: 7, y: 0)
                            }
                        }
                     
                        
                    }.offset(x: 0, y: -80)
                    
                    
                }
            }
            
            
            GeometryReader { geometry in
                ImageCarouselView(numberOfImages: 3) {
                   
                    Image("Food1")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Image("Food2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                    Image("Food3")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                    
                  
                }
                
            }.frame(width: 370, height: 0)
            .offset(x: 45, y: -70)
            
            
            
        }
        
    }
}
}



struct CoontentView_Previews: PreviewProvider {
    static var previews: some View {
        CoontentView()
    }
}

