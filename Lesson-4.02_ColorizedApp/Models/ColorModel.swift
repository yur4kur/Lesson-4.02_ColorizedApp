//
//  ColorModel.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

<<<<<< FinalTask
import SwiftUI

struct ColorModel {
    let redColor: Double
    let greenColor: Double
    let blueColor: Double
    var finalColor: Color {
        Color(red: redColor, green: greenColor, blue: blueColor)
    }
    
    init(redColor: Double, greenColor: Double, blueColor: Double) {
        self.redColor = redColor / 100
        self.greenColor = greenColor / 100
        self.blueColor = blueColor / 100
    }
}
>>>>>> main