//
//  File.swift
//  project Punchies
//
//  Created by Nini Ola on 11/16/21.
//

import Foundation
//
//  homepage.swift
//  project 1
//
//  Created by Nini Ola on 11/12/21.
//

import SwiftUI

struct oontentView: View {
    var body: some View{
        
        
            ZStack(alignment:.leading)
            { let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                
                gradient.opacity(0.50)
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    Image("camera")
                        .resizable()
                        .frame(width: 400, height: 500)
                        .clipShape(RoundedRectangle(cornerRadius:10))
                        .overlay
                    {
                        
                            RoundedRectangle(cornerRadius:5).stroke(.blue, lineWidth: 10)
                    }
                }
                }
                
                    
                    
                }
            
    }

        
struct oontentView_Previews: PreviewProvider {
    static var previews: some View {
        oontentView()
    }
}
