//
//  PostCardView.swift
//  iOSLinkedinApp
//
//  Created by Arjun Saseendran on 24/05/26.
//

import SwiftUI

struct SocialView {
    var id: Int
    var image: String
    var title: String
}

var socialView: [SocialView] = [
    .init(id: 0, image: "hand.thumbsup", title: "Like"),
    .init(id: 1, image: "text.bubble", title: "Comment"),
    .init(id: 2, image: "arrow.turn.up.right", title: "Share"),
    .init(id: 3, image: "paperplane.fill", title: "Send")
]



let samplePostData = PostModel(id: 1, image: "02", title: "Ravan Ramu", followers: 5, profileImage: "1")

struct PostCardView: View {
    var data: PostModel
    var body: some View {
        VStack(alignment: .leading){
            Rectangle()
                .fill(.gray).opacity(0.4)
                .frame(width: .infinity, height: 10)
                .ignoresSafeArea(.all)
            HStack(alignment: .center){
                Image(data.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70, alignment: .leading)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                    
                    
                }
                Spacer()
                Image(systemName: "ellipsis")
                
            }.padding(.horizontal)
            Text("Looking for a new position as Full Stack IOS Developer in Kochi with expected salary of above 6 LPA. Love to build new design and love to work.")
                .padding()
                
            Image(data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
            Divider()
        }
    }
}

#Preview {
    PostCardView(data: samplePostData)
}
