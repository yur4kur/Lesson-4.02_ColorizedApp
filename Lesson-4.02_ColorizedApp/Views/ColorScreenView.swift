//
//  ColorScreenView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

struct ColorScreenView: View {
    var color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 10.0)
            .frame(height: 150)
            .overlay(RoundedRectangle(cornerRadius: 10)
                .stroke(Color.white, lineWidth: 4))
            .foregroundStyle(color)
            .padding(.all)
    }
}

#Preview {
    ColorScreenView(color: Color(red: 1.255, green: 0.0, blue: 0.0))
}
