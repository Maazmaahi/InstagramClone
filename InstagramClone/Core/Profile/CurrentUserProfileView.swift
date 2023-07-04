//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 27/06/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    let user: User
    var body: some View {
        NavigationStack {
            ProfileView(user: user)
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            AuthService.shared.signOut()
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .foregroundColor(.black)
                        }
                    }
                }
        }
    }
}

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView(user: User.MOCK_USERS[4])
    }
}
