//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 23/06/23.
//

import SwiftUI

struct FeedCell: View {
    let post: Post
    var body: some View {
        VStack {
            // image + username
            HStack {
                if let user = post.user {
                    AvatarView(image: user.profileImageUrl ?? "", dimension: 40)
                    
                    Text(user.username)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            
            // post image
            
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            // button
            HStack {
                Button {
                    print("Like post")
                } label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button {
                    print("Comment on post")
                } label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button {
                    print("Share post")
                } label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .padding(.leading, 8)
            .padding(.top, 4)
            .foregroundColor(.black)
            
            // likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
            
            // caption label
            HStack {
                Text("\(post.user?.username ?? "") ").fontWeight(.semibold) +
                Text(post.caption)
            }
            .font(.footnote)
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            .padding(.top, 1)
            
            Text("7h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 10)
                .padding(.top, 1)
                .foregroundColor(.gray)
            
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell(post: Post.MOCK_POST[0])
    }
}
