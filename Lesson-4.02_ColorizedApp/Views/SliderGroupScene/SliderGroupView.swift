//
//  ColorSliderView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

struct SliderGroupView: View {
    @Binding var value: Double
    @FocusState private var valueIsFocused: Bool
    var color: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundStyle(.white)
            Slider(value: $value, in: 0...255, step: 1)
                .tint(color)
            TextField("", value: $value, formatter: NumberFormatter())
                .focused($valueIsFocused)
                .textFieldStyle(.roundedBorder)
                .frame(width: 45)
                .keyboardType(.numberPad)
                .toolbar {
                    ToolbarItemGroup(placement: .keyboard) {
                        Button("Done") {
                            valueIsFocused.toggle()
                        }
                    }
                }
        }
        .padding(.horizontal)
    }
}

#Preview {
    SliderGroupView(value: .constant(150), color: .red)
}
