//
//  ProfileHeaderView.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 27/06/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack(spacing: 10) {
            //pic and stats
            HStack {
                AvatarView(image: user.profileImageUrl ?? "", dimension: 80)
                
                Spacer()
                
                HStack(spacing: 8) {
                    UserStatView(value: 4, title: "Posts")
                    UserStatView(value: 16, title: "Followers")
                    UserStatView(value: 7, title: "Following")
                    
                }
            }.padding(.horizontal)
                .padding(.horizontal, 4)
            
            // name and bio
            VStack(alignment: .leading, spacing: 4) {
                if let fullname = user.fullname {
                    Text(fullname)
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                
                if let bio = user.bio {
                    Text(bio)
                        .font(.footnote)
                }
                
                Text(user.username)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.horizontal)
            
            // action button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(maxWidth: .infinity)
                    .frame(height: 32)
                    .foregroundColor(.black)
                    .overlay(
                        RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1)
                    )
            }.padding(.horizontal)
            Divider()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.MOCK_USERS[0])
    }
}
