//
//  ColorSliderView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

struct SliderGroupView: View {
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        HStack {
            Text("1").foregroundStyle(.white)
            Slider(value: $value, in: 1...255, step: 1)
                .tint(color)
            Text("255").foregroundStyle(.white)
            
        }
        .padding(.horizontal)
    }
}

#Preview {
    SliderGroupView(value: .constant(150), color: .red)
}
