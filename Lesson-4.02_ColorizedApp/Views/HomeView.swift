//
//  ContentView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            LinearGradient(colors: [.mint, .indigo], 
                           startPoint: UnitPoint(x: 1.0, y: 0.5),
                           endPoint: UnitPoint(x: 0.5, y: 1.0))
                .ignoresSafeArea()
            VStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 300, height: 200)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 4))
                    .foregroundStyle(.clear)
                    .padding()

                HStack {
                    
                }
                Spacer()
            }
            
        }
    }
}

#Preview {
    HomeView()
}
