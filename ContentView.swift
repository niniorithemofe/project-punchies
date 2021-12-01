import SwiftUI

struct ContentView: View {
    @State var authenticationDidSucceed: Bool = false
    var body: some View {
        if authenticationDidSucceed{ontentView()
            
        }
        else {
            Login(authenticationDidSucceed: $authenticationDidSucceed)
        }
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
