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
            Text("\(lround(value))").foregroundStyle(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            TextField("", value: $value, formatter: NumberFormatter())
                .textFieldStyle(.roundedBorder)
                .frame(width: 45)
                .keyboardType(.numberPad)

        }
        .padding(.horizontal)
    }
}

#Preview {
    SliderGroupView(value: .constant(150), color: .red)
}
