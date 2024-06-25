//
//  UIView+Extentions.swift
//  BasicSwiftUI
//
//  Created by Zafran on 25/06/2024.
//

import SwiftUI

extension View {
    ///View Alignment
    
    @ViewBuilder
    func hSpacing(_ alignment : Alignment = .center) -> some View {
        self.frame(maxWidth: .infinity, alignment: alignment)
    }
    
    @ViewBuilder
    func vSpacing(_ alignment : VerticalAlignment = .center) -> some View {
        switch alignment {
        case .top:
            self.frame(maxHeight: .infinity, alignment: .top)
        case .bottom:
            self.frame(maxHeight: .infinity, alignment: .bottom)
        case .center:
            self.frame(maxHeight: .infinity, alignment: .center)
        default:
            self.frame(maxHeight: .infinity)
        }
    }
    
    ///Disable With Opacity
    @ViewBuilder
    func disableWithOpacity (_ condition : Bool) -> some View {
        self
            .disabled(condition)
            .opacity(condition ? 0.5 : 1)
    }
    
}
extension Color {
    static let backgroundColor = LinearGradient(gradient: Gradient(colors: [Color("background1"), Color("background2")]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let bottomSheetBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(0.26), Color("Background 2").opacity(0.26)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let navBarBackground = LinearGradient(gradient: Gradient(colors: [Color("Background 1").opacity(0.1), Color("Background 2").opacity(0.1)]), startPoint: .topLeading, endPoint: .bottomTrailing)
    static let tabBarBackground = LinearGradient(gradient: Gradient(colors: [Color("Tab Bar Background 1").opacity(0.26), Color("Tab Bar Background 2").opacity(0.26)]), startPoint: .top, endPoint: .bottom)
    static let weatherWidgetBackground = LinearGradient(gradient: Gradient(colors: [Color("Weather Widget Background 1"), Color("Weather Widget Background 2")]), startPoint: .leading, endPoint: .trailing)
    static let bottomSheetBorderMiddle = LinearGradient(gradient: Gradient(stops: [.init(color: .white, location: 0), .init(color: .clear, location: 0.2)]), startPoint: .top, endPoint: .bottom)
    static let bottomSheetBorderTop = LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .white.opacity(0.5), .white.opacity(0)]), startPoint: .leading, endPoint: .trailing)
    static let underline = LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .white, .white.opacity(0)]), startPoint: .leading, endPoint: .trailing)
    static let tabBarBorder = Color("Tab Bar Border").opacity(0.5)
    static let forecastCardBackground = Color("Forecast Card Background")
    static let probabilityText = Color("Probability Text")
}

extension View {
    func backgroundBlur(radius: CGFloat = 3, opaque: Bool = false) -> some View {
        self
            .background(
                Blur(radius: radius, opaque: opaque)
            )
    }
}
