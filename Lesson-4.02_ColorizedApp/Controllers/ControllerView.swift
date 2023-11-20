//
//  ContentView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

// MARK: - HomeView

struct ControllerView: View {
    
    // MARK: Wrapped properties
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    // MARK: View body
    var body: some View {
        ZStack {
            
            /// Base layer
            LinearGradient(colors: [.mint, .indigo],
                           startPoint: UnitPoint(x: 1.0, y: 0.5),
                           endPoint: UnitPoint(x: 0.5, y: 1.0))
                .ignoresSafeArea()
            
            /// Main layer
            VStack {
                
                /// Color screen
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 150)
                    .padding(.all)
                    .overlay(RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.white, lineWidth: 4))
                    .foregroundStyle(.clear)
                    .padding(.all)

                /// Sliders group
                SliderGroupView(value: $redSliderValue, color: .red)
                SliderGroupView(value: $greenSliderValue, color: .green)
                SliderGroupView(value: $blueSliderValue, color: .blue)
                Spacer()
            }
            
        }
    }
}

#Preview {
    ControllerView()
}
