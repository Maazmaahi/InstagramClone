//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 27/06/23.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    var body: some View {
        NavigationStack {
            ProfileView(user: User.MOCK_USERS[4])
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

struct CurrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CurrentUserProfileView()
    }
}
