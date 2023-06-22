//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 22/06/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                //header
                VStack(spacing: 10) {
                    //pic and stats
                    HStack {
                        AvatarView(image: "super-girl-1")
                        
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
                        Text("Melissa Benoist")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        
                        Text("Krypton")
                            .font(.footnote)
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
                
                //post grid view
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 15, id:  \.self) { index in
                        Image("super-girl-4")
                            .resizable()
                            .scaledToFill()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.black)
                    }
                }
            }
            
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
