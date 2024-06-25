//
//  LoginView.swift
//  BasicSwiftUI
//
//  Created by Zafran on 24/06/2024.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var isSecurePassword: Bool = true
    @State private var isShowButton: Bool = true
    
    var body: some View {
        
        VStack {
            Text("Login")
                .hSpacing(.leading)
                .padding()
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(.primaryBg)
            FloatingTextFieldView(
                text: $email,
                title: "Email",
                height: 55,
                textFontSize: 14,
                textFontWeight: .semibold,
                isSecureField: false,
                showClearButton: true
            )
            .padding()
            
            FloatingTextFieldView(
                text: $password,
                title: "Password",
                height: 55,
                textFontSize: 18,
                textFontWeight: .medium,
                isSecureField: true,
                showClearButton: true
            )
            .padding()
            
            
            
            
            Toggle("Show Password", isOn: $isSecurePassword)
                .padding()
                .foregroundColor(.primaryBg)
                .fontWeight(.bold)
            
            VStack{
                
                GradientButton(title: "Login", icon: "arrow.right") {
                    
                }
                
                .padding()
                .hSpacing(.trailing)
//                .disableWithOpacity(email.isEmpty || password.isEmpty)
            }
        }
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
