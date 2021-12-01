//
//  homepage.swift
//  project 1
//
//  Created by Nini Ola on 11/12/21.
//

import SwiftUI

struct ontentView: View {
    var body: some View{
        NavigationView
        {
            ZStack(alignment:.leading)
            { let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                
                gradient.opacity(0.50)
                    .edgesIgnoringSafeArea(.all)
            VStack(alignment:.center)
                {
                           
                           HStack{
                                       Text("Search for what you love!")
                                           .foregroundColor(Color.gray)
                                           .font(.system(size: 15))
                                           .padding(.leading, 20)
                                       Spacer()
                                       Image(systemName: "magnifyingglass")
                                           .font(.system(size: 20, weight: .medium, design: .serif))
                                           .foregroundColor(Color.purple)
                                           .padding(.trailing, 20)
                                       
                                       
                                   }
                                   .frame(width: 350, height: 54)
                                   .background(Color.white)
                                   .cornerRadius(14)
                                   .padding(.all, 20.0)
                           Spacer()
                
                                iiconstack()
                    .padding(.horizontal)
                    
                                scrollview()
                                hhomebbb (title:"      New",title2: "Favourites",title3: "Popular")
                                HStack{
                                    ddropdown()
                                    dddropdown()
                                    dddropdown()
                                }
                                .padding(.leading)
                HStack(alignment:.center, spacing:10){
                    NavigationLink(destination:ContentVi())
                    {
                        Image(systemName:"person")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius:30))
                            .overlay
                        {
                                RoundedRectangle(cornerRadius:10).stroke(.blue, lineWidth: 3)
                        }
                    }
                    .padding(.horizontal)
                    NavigationLink(destination:oontentView())
                        {
                        Image(systemName:"qrcode")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius:10))
                            .overlay
                            {
                                RoundedRectangle(cornerRadius:10).stroke(.blue, lineWidth: 3)
                            }
                        
                    }
                        .padding(.horizontal)
                    NavigationLink(destination:CoontentView())
                        {
                        Image(systemName:"magnifyingglass")
                            
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius:3))
                            .overlay
                            {
                                RoundedRectangle(cornerRadius:5).stroke(.blue, lineWidth: 3)
                            }
                        }
                        .padding(.horizontal )
                    NavigationLink(destination:Home())
                        {
                        Image(systemName:"location")
                            
                            .resizable()
                            .frame(width: 50, height: 50)
                            .clipShape(RoundedRectangle(cornerRadius:3))
                            .overlay
                            {
                                RoundedRectangle(cornerRadius:5).stroke(.blue, lineWidth: 3)
                            }
                        }
                
        }
            }
        }
    }
}

}
struct hhomebbb: View {
    let title: String
    let title2: String
    let title3: String
    var body: some View {
        HStack{
                
            Text(title)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.purple)
            
            Spacer()
            
            Text(title2)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.purple)
                
            Spacer()
            
            Text(title3)
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(.purple)
                
              
        }
        
    }
    
}
struct iiconstack : View {
    var body: some View {
        NavigationView
         {ZStack
            { let gradient = LinearGradient(colors: [Color.blue, Color.purple], startPoint: .top, endPoint: .bottom)
                
                gradient.opacity(0.70)
                    .edgesIgnoringSafeArea(.all)
            
                HStack
                {
                    
                NavigationLink(destination:dddddropdown())
                {
                    Image("beauty")
                        .resizable()
                        .frame(width: 80, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius:10))
                        .overlay
                    {
                        
                            RoundedRectangle(cornerRadius:5).stroke(.blue, lineWidth: 10)
                    }
                }
                .padding()
                    
                NavigationLink(destination:
                                ntentView())
                    {
                    Image("workout1")
                        .resizable()
                        .frame(width: 80, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius:5))
                        .overlay
                        {
                            RoundedRectangle(cornerRadius:10).stroke(.blue, lineWidth: 10)
                        }
                    
                }
                    .padding()
                NavigationLink(destination: dddddropdown())
                    {
                    Image("restaurant1")
                        .resizable()
                        .frame(width: 80, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius:5))
                        .overlay
                        {
                            RoundedRectangle(cornerRadius:10).stroke(.blue, lineWidth: 10)
                        }
                    }
                // specific for detailt- inline
                // automatic - fit based on the parent
        }
            }
        }
    }
}

struct ddropdown: View {
    @State var isExpanded = false
    var body: some View {
        VStack
        {
            DisclosureGroup("...", isExpanded: $isExpanded)
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
struct dddropdown: View {
    @State var isExpanded = false
    var body: some View {
        VStack
        {
            DisclosureGroup("...", isExpanded: $isExpanded)
            {
                VStack{
                    ForEach(1...5,id:\.self)
                    {num in
                        Text("Jose's Gym")
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
        }
    }
}
struct scrollview: View {
    var body: some View {
        ScrollView(.horizontal)
        {HStack (spacing: 10){
            VStack {
                Image("bake")
                    .resizable()
                VStack(alignment: .leading) {
                    Text("Urban soul food")
                        .font(.system(size: 20, weight: .bold, design: .serif))
                        .foregroundColor(Color.purple)
                        .padding(.horizontal, 10)
                    Text("new to Punchies, come get your punch today!")
                        .font(.system(size: 15, weight: .medium, design: .serif))
                        .foregroundColor(Color.purple)
                        .lineLimit(3)
                        .padding(.top, 5)
                        .padding(.leading, 10)
                        .padding(.bottom, 15)
                                                    
                                                }
                                            }
            .frame(width: 200, height: 200)
            .background(Color.white)
            .cornerRadius(30)
            VStack {
                Image("hair")
                    .resizable()
                VStack(alignment: .leading) {
                    Text("ALTA")
                        .font(.system(size: 20, weight: .bold, design: .serif))
                        .foregroundColor(Color.purple)
                        .padding(.horizontal, 10)
                    Text("We offer one of the best selection in food, come get your punch today!")
                        .font(.system(size: 15, weight: .medium, design: .serif))
                        .foregroundColor(Color.purple)
                        .lineLimit(3)
                        .padding(.top, 5)
                        .padding(.leading, 10)
                        .padding(.bottom, 15)
                                                    
                                                }
                                            }
            .frame(width: 200, height: 200)
            .background(Color.white)
            .cornerRadius(30)
                                        }
                                    }
       // Spacer()
           // .padding(.top, 120.0)
                    
                    
                }
            }
        
        
struct ontentView_Previews: PreviewProvider {
    static var previews: some View {
        ontentView()
    }
}
