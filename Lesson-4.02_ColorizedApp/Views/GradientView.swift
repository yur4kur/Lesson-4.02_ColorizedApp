//
//  GradientView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

struct GradientView: View {
    var body: some View {
        LinearGradient(colors: [.mint, .indigo],
                       startPoint: UnitPoint(x: 1.0, y: 0.5),
                       endPoint: UnitPoint(x: 0.5, y: 1.0))
            .ignoresSafeArea()
    }
}

#Preview {
    GradientView()
}
