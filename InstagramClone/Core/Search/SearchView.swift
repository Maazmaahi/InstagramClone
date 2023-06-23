//
//  SearchView.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 23/06/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVStack(spacing: 12) {
                    ForEach(0 ... 15, id: \.self) { user in
                        HStack {
                            AvatarView(image: "captain-marvel-1", dimension: 40)
                            
                            VStack(alignment: .leading) {
                                Text("Captain marvel")
                                    .fontWeight(.semibold)
                                Text("Carol Danvers")
                            }.font(.footnote)
                            
                            Spacer()
                        }
                        .padding(.horizontal)
                    }
                }
                .padding(.top, 8)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
