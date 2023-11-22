//
//  ColorModel.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI

struct ColorModel {
    
    enum focusedColor {
       case red, green, blue
    }
    
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    
    var finalColor: Color {
        Color(red: redColor, green: greenColor, blue: blueColor)
    }
    
    init(redColor: Double, greenColor: Double, blueColor: Double) {
        self.redColor = redColor / 255
        self.greenColor = greenColor / 255
        self.blueColor = blueColor / 255
    }
}
