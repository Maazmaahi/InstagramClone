//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Md Maaz Ahmad on 04/07/23.
//

import Foundation

class LoginViewModel: ObservableObject {
    @Published var email = ""
    @Published var password = ""
    
    func signIn() async throws {
       try await AuthService.shared.login(withEmail: email, password: password)
    }
}
