//
//  punch ccard.swift
//  project 1
//
//  Created by Nini Ola on 11/12/21.
//

import Foundation
//
//  puch.swift
//  homepage with nav
//
//  Created by Nini Ola on 11/11/21.
//
import SwiftUI

struct PunchCards: View {
    let columns: [GridItem] = [GridItem(.flexible()),
                                   GridItem(.flexible()),GridItem(.flexible())]
        var body: some View {
            
            ZStack { let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                
                gradient.opacity(0.70)
                    .edgesIgnoringSafeArea(.all)
                
                VStack {
                    

                    
                    VStack {
                        Image("Micheal")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .shadow(radius: 8)
                            .imageScale(.small)
                            .overlay(Circle().stroke(Color.blue, lineWidth: 1))
                            .frame(width:200)
                        Spacer()
                    }
                    
                    VStack {
                        HStack{
                            
                            Image("Logo")
                                .resizable()
                                .padding()
                                .frame(width: 100, height: 100)
                                .cornerRadius(20)
                                .overlay
                            {
                                RoundedRectangle(cornerRadius:5).stroke(.purple, lineWidth: 20)
                            }
                            Spacer()
                            
                            GridAndTest(name: "", imageName: "")
                            Spacer()
                                
                            GridAndTest(name: "", imageName: "")
                                .padding(.trailing)
                            
                        }
                        LazyVGrid(columns: columns) {
                            GridAndTest(name: "", imageName: "")
                            GridAndTest(name: "", imageName: "")
                            GridAndTest(name: "", imageName: "")
                            GridAndTest(name: "", imageName: "")
                            GridAndTest(name: "", imageName: "")
                            GridAndTest(name: "", imageName: "")
                            
                            
                            Spacer()
                            
                        }
                        HStack {
                            
                            
                            GridAndTest(name: "", imageName: "")
                            Image(systemName: "gift.fill")
                                .font(.system(size: 70, weight: .black))
                            
                            
                            
                        }
                    }
                    HStack {
                        
                        Text("Punch")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.black)
                            .padding()
                            .background(Color.white.shadow(color: .purple, radius: 3, x: 0.0, y: 0.0))
                        
                        Image(systemName:"info.circle")
                            .font(.largeTitle)
                            .foregroundColor(.black)
                        
                    }
                }
            }
            
        }
        
        struct GridAndTest: View {
            let name: String
            let imageName: String
            var body: some View {
                VStack {
                    
                    Image("Logo")
                        .resizable()
                        .padding()
                        .frame(width: 100, height: 100)
                        .cornerRadius(20)
                        .overlay
                    {
                        RoundedRectangle(cornerRadius:5).stroke(.gray, lineWidth: 5)
                    }
                    Text("")
                        .fontWeight(.semibold)
                        .minimumScaleFactor(0.6)
                    
                }
            }
        }
    }
    

struct PunchCards_Previews: PreviewProvider {
    static var previews: some View {
        PunchCards()
            .preferredColorScheme(.light)
    }
}

