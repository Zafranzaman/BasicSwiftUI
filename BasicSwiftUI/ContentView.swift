//
//  ContentView.swift
//  BasicSwiftUI
//
//  Created by Zafran on 12/06/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack {
                Text("Cupertino, CA")
                    .font(.system(size: 32, weight: .medium, design: .default))
                    .foregroundColor(.white)
                    .padding()
               
                
                VStack(spacing: 8) {
                    Image(systemName: isNight ? "moon.stars.fill" : "cloud.sun.fill")
                        .renderingMode(.original)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180)
                    
                    Text("76°")
                        .font(.system(size: 70, weight: .medium, design: .default))
                        .foregroundColor(.white)
                    
                }
                Spacer()
                
                HStack(spacing: 20) {
                    DaysView(title: "THU", image: "cloud.sun.fill")
                    DaysView(title: "FRI", image: "sun.max.fill")
                    DaysView(title: "SAT", image: "wind.snow")
                    DaysView(title: "SUN", image: "sunset.fill")
                    DaysView(title: "MON", image: "cloud.sun.fill")
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    Text("Change Day Time")
                        .frame(width: 280, height: 55)
                        .background(Color.white)
                        .font(.system(size: 20,weight: .semibold, design: .default))
                        .cornerRadius(10)
                }
                
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

struct DaysView: View {
    var title : String
    var image : String
    var body: some View {
        VStack(alignment: .center, spacing: 8) {
            Text(title)
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("76°")
                .font(.system(size: 20, weight: .medium, design: .default))
                .foregroundColor(.white)
            
        }
    }
}


struct BackgroundView: View {
    
    var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : .white]),
                       startPoint: .topLeading,
                       endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
}
