//
//  ColourTextFieldView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 22.11.2023.
//

import SwiftUI

struct ColourTextFieldView: View {
    
    @Binding var value: Double
    @State private var alert = false
    
    var body: some View {
        TextField(Constants.nilString, value: $value, formatter: NumberFormatter())
            .textFieldStyle(.roundedBorder)
            .frame(width: 45)
            .keyboardType(.numberPad)
    }
}

#Preview {
    ColourTextFieldView(value: .constant(150))
}
