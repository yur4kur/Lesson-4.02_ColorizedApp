//
//  ColorSliderView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

// MARK: - Slider group View

struct SliderGroupView: View {
    
    // MARK: Wrapped properties
    
    @Binding var value: Double
    
    
    // MARK: Public properties
    
    var color: Color
    
    // MARK: - View body
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundStyle(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            ColorTextfieldView(value: $value)
        }
        .padding(.horizontal)
    }
}

 // MARK:  - Preview

#Preview {
    SliderGroupView(value: .constant(150), color: .red)
}
