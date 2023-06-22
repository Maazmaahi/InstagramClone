//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 22/06/23.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            Text(title)
                .font(.footnote)
        }
        .frame(width: 76)
    }
}

struct UserStatView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatView(value: 12, title: "Posts")
    }
}
