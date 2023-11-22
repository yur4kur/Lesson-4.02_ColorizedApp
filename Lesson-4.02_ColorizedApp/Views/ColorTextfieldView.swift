//
//  ColorTextfieldView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 21.11.2023.
//

import SwiftUI

struct ColorTextfieldView: View {
    @Binding var value: Double
    @Binding var state: Bool
    
    var body: some View {
        TextField("", value: $value, formatter: NumberFormatter())
            .focused($isFocused)
            .textFieldStyle(.roundedBorder)
            .frame(width: 45)
            .keyboardType(.numberPad)
    }
}

#Preview {
    ColorTextfieldView(value: .constant(0.5))
}
