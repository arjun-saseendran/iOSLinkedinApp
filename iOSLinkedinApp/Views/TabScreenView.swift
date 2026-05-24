//
//  TabScreenView.swift
//  iOSLinkedinApp
//
//  Created by Arjun Saseendran on 24/05/26.
//

import SwiftUI

struct TabScreenView: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            MyNetworkView().tabItem{
                Image(systemName: "person.2.fill")
                Text("MyNetwork")
                
            }
            MyNetworkView().tabItem{
                Image(systemName: "plus.app.fill")
                Text("Post")
                
            }
            MyNetworkView().tabItem{
                Image(systemName: "bell.badge.fill")
                Text("Notifications")
                
            }
            MyNetworkView().tabItem{
                Image(systemName: "briefcase.fill")
                Text("Jobs")
                
            }
        }
    }
}

#Preview {
    TabScreenView()
}
