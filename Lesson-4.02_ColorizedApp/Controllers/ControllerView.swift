//
//  ContentView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI



// MARK: - HomeView

struct ControllerView: View {
    
    // MARK: Types
    enum ColorTextfield {
        case red, green, blue
    }
    
    // MARK: Wrapped properties
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    @FocusState private var isFocused: ColorTextfield?
    
    // MARK: Private properties
    private var color: ColorModel {
        ColorModel(
            redColor: redSliderValue,
            greenColor: greenSliderValue,
            blueColor: blueSliderValue
        )
    }
    
    
    // MARK: - View body
    var body: some View {
        ZStack {
            
            // MARK:  Background
            GradientView()
                .onTapGesture {
                    hideKeyboard()
                }
            
            // MARK: Elements Stack
            VStack {
                
                /// Color screen
                ColorScreenView(color: color.finalColor)
                
                /// Sliders' group
                SliderGroupView(value: $redSliderValue, color: .red)
                    .focused($isFocused, equals: .red)
                SliderGroupView(value: $greenSliderValue, color: .green)
                    .focused($isFocused, equals: .green)
                SliderGroupView(value: $blueSliderValue, color: .blue)
                    .focused($isFocused, equals: .blue)
                
                Spacer()
            }
            
            // MARK: Toolbar settings
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button(action: moveUp) {
                        Image(systemName: "chevron.up")
                    }
                    Button(action: moveDown) {
                        Image(systemName: "chevron.down")
                    }
        
                    Spacer()
                    
                    Button("Done") {
                        hideKeyboard()
                    }
                }
            }
        }
    }
    
   
    // MARK: - Private methods
    
    // MARK: Moving between TextFileds
    /// Up
    private func moveUp() {
        switch isFocused {
        case .red:
            isFocused = .blue
        case .green:
            isFocused = .red
        default:
            isFocused = .green
        }
    }
    
    /// Down
    private func moveDown() {
        switch isFocused {
        case .red:
            isFocused = .green
        case .green:
            isFocused = .blue
        default:
            isFocused = .red
        }
    }
    
    // MARK: Hiding keyboard
    private func hideKeyboard() {
        isFocused = nil
    }
    
}
// MARK: - Preview
#Preview {
    ControllerView()
}
