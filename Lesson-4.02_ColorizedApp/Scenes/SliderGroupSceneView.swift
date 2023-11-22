//
//  ColorSliderView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

// MARK: - Slider group View

struct SliderGroupSceneView: View {
    
    // MARK: Wrapped properties
    @Binding var value: Double
    
    @State private var textValue = 0.0
    @State private var alert = false
    
    // MARK: Public properties
    var color: Color
    
    // MARK: - View body
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundStyle(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
                .onChange(of: value) {
                    textValue = value
                }
            ColourTextFieldView(value: $textValue)
                .onAppear {
                    textValue = value
                }
                .onSubmit {
                    checkValue()
                }
                .alert("Wrong format!", isPresented: $alert, actions: {}) {
                    Text("Number should be in 0...255 range")
                }
        }
        .padding(.horizontal)
    }
    
    
    // MARK: - Private methods
    
    private func checkValue() {
        if textValue > 255 || textValue < 0 {
            alert.toggle()
            value = 0.0
        } else {
            value = textValue
        }
    }
}

 // MARK:  - Preview

#Preview {
    SliderGroupSceneView(value: .constant(150), color: .red)
}
