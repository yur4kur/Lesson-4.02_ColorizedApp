//
//  ColorTextView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 21.11.2023.
//

import SwiftUI

struct ColorTextView: View {
    var value: Double
    
    var body: some View {
        Text("\(lround(value))").foregroundStyle(.white)
    }
}

#Preview {
    ColorTextView(value: 0.5)
}
