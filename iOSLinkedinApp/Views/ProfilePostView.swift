//
//  ProfilePostView.swift
//  iOSLinkedinApp
//
//  Created by Arjun Saseendran on 24/05/26.
//

import SwiftUI

struct ProfilePostView: View {
    var body: some View {
        VStack(alignment: .leading){
            SearchBarView()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
            }.padding(.horizontal)
            Divider()
            HStack{
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("Photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(Color.green)
                Text("Video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(Color.orange)
                Text("Calendar")
            }.padding(.horizontal)
        }
    }
}

#Preview {
    ProfilePostView()
}
