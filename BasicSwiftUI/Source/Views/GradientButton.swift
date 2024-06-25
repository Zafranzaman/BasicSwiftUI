//
//  GradientButton.swift
//  BasicSwiftUI
//
//  Created by Zafran on 24/06/2024.
//

import SwiftUI

struct GradientButton: View {
    var title: String
    var icon: String
    var onclick: () -> ()
    var body: some View {
        Button(action: onclick, label: {
            HStack(spacing: 15) {
                Text(title)
                Image(systemName: icon)
            }
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding(.vertical, 12)
            .padding(.horizontal, 35)
            .background(LinearGradient(colors: [.gray, .orange, .orange ], startPoint: .top, endPoint: .bottom), in: .capsule)
        })
    }
}

#Preview {
    GradientButton(title: "Login", icon: "arrow.right") {
        
    }
}
