//
//  HomeView.swift
//  iOSLinkedinApp
//
//  Created by Arjun Saseendran on 24/05/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        VStack(spacing: 20){
            ProfilePostView()
             PostView()
        }
       
    }
}

#Preview {
    HomeView()
}
