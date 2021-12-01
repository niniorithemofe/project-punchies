//
//  icon view.swift
//  project 1
//
//  Created by Nini Ola on 11/13/21.
//

import Foundation
import SwiftUI

struct ntentView: View {
    var body: some View
    {ZStack
            { let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                
                gradient.opacity(0.70)
                    .edgesIgnoringSafeArea(.all)
            
            VStack(alignment:.center)
            {
                ddddropdown()
                
        }
            }
    }
    }
        
struct ddddropdown: View {
    @State var isExpanded = false
    var body: some View {
        VStack
        {
            DisclosureGroup("nativity chiropractor", isExpanded: $isExpanded)
            {
                VStack{
                    ForEach(1...5,id:\.self)
                    {num in
                        Text("Free yoga session@ full lotus yoga ")
                            .font(.caption)
                            .padding(.all)
                    }
                }
            }
            .accentColor(.white)
            .font(.title2)
            .foregroundColor(.white)
            .padding(.all)
            .background(Color.blue)
            .cornerRadius(8)
            Spacer()
            Spacer()
        }
    }
}
struct ddddddropdown: View {
    @State var isExpanded = false
    var body: some View {
        VStack
        {
            DisclosureGroup("AlTA Beauty", isExpanded: $isExpanded)
            {
                VStack{
                    ForEach(1...5,id:\.self)
                    {num in
                        Text("Free yoga session@ full lotus yoga ")
                            .font(.caption)
                            .padding(.all)
                    }
                }
            }
            .accentColor(.white)
            .font(.title2)
            .foregroundColor(.white)
            .padding(.all)
            .background(Color.blue)
            .cornerRadius(8)
            Spacer()
            Spacer()
        }
    }
}
struct dddddropdown: View {
    @State var isExpanded = false
    var body: some View {
        VStack
        {
            DisclosureGroup("Tou & Mai boba cafe ", isExpanded: $isExpanded)
            {
                VStack{
                    ForEach(1...5,id:\.self)
                    {num in
                        Text("Free yoga session@ full lotus yoga ")
                            .font(.caption)
                            .padding(.all)
                    }
                }
            }
            .accentColor(.white)
            .font(.title2)
            .foregroundColor(.white)
            .padding(.all)
            .background(Color.blue)
            .cornerRadius(8)
            Spacer()
            Spacer()
        }
    }
}
struct ntentView_Previews: PreviewProvider {
    static var previews: some View {
        ntentView()
    }
}

