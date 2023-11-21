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
    
    // MARK: Private properties
    private var color: ColorModel {
        ColorModel(redColor: redSliderValue,
                   greenColor: greenSliderValue,
                   blueColor: blueSliderValue)
    }
    
    
    // MARK: View body
    var body: some View {
        ZStack {
            
            /// Background
            GradientView()
            
            /// Main layer
            VStack {
                
                /// Color screen
                ColorScreenView(color: color.finalColor)

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
