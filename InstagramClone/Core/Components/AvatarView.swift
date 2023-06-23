//
//  AvatarView.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 22/06/23.
//

import SwiftUI

struct AvatarView: View {
    let image: String
    let dimension: CGFloat
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: dimension, height: dimension)
            .clipShape(Circle())
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(image: "super-girl-1", dimension: 40)
    }
}
