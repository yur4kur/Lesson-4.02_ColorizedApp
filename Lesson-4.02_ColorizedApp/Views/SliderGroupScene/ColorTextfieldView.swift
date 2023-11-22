//
//  ColorTextfieldView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 21.11.2023.
//

import SwiftUI

struct ColorTextfieldView: View {
    
    @Binding var value: Double
    @State private var alert = false
 
    var body: some View {
        TextField("", value: $value, formatter: NumberFormatter())
            .textFieldStyle(.roundedBorder)
            .frame(width: 45)
            .onSubmit {
                checkValue()
            }
            .alert("Wrong format!", isPresented: $alert, actions: {}) {
                Text("Number should be in 0...255 range")
            }
            
    }
    
    private func checkValue() {
        if value > 255 || value < 0 {
            alert.toggle()
            value = 0.0
        }
    }
}

#Preview {
    ColorTextfieldView(value: .constant(0.5))
}
