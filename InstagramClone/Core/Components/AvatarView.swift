//
//  AvatarView.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 22/06/23.
//

import SwiftUI

struct AvatarView: View {
    let image: String
    var body: some View {
        Image(image)
            .resizable()
            .scaledToFill()
            .frame(width: 80, height: 80)
            .clipShape(Circle())
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(image: "super-girl-1")
    }
}
