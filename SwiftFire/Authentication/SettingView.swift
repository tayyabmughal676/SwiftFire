//
//  SettingView.swift
//  SwiftFire
//
//  Created by Thor on 25/04/2023.
//

import SwiftUI

@MainActor
final class SettingsViewModel: ObservableObject{
    
    func signOut() throws {
       try AuthenticationManager.shared.signOut()
    }
}

struct SettingView: View {
    
    
    @StateObject private var viewModel = SettingsViewModel()
    @Binding var showSignInView: Bool
    
    
    var body: some View {
        List{
            Button("Log out") {
                Task{
                    do{
                       try viewModel.signOut()
                    } catch {
                        print("error: \(error)")
                    }
                }
                
            }
        }
        .navigationTitle("Settings")
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            SettingView(showSignInView: .constant(false))
        }
    }
}
