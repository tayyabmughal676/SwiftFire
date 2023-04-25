//
//  RootView.swift
//  SwiftFire
//
//  Created by Thor on 25/04/2023.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignInView : Bool = false
    
    
    var body: some View {
        ZStack{
            NavigationStack{
                SettingView(showSignInView: $showSignInView)
            }
        }
        .onAppear{
            let authUser = try? AuthenticationManager.shared.getAuthenticationUser()
            
            self.showSignInView = authUser == nil
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack{
                AuthenticationView()
            }
        }
    }
}

struct RootView_Previews: PreviewProvider {
    static var previews: some View {
        RootView()
    }
}
