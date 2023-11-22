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
            .keyboardType(.numberPad)
            .onSubmit() {
                checkValue()
                    //.alert("Wrong format!", isPresented: $alert) {}
            }
            
    }
    
    private func checkValue() {
        if value > 255 || value < 0 {
            alert.toggle()
        }
    }
}

#Preview {
    ColorTextfieldView(value: .constant(0.5))
}