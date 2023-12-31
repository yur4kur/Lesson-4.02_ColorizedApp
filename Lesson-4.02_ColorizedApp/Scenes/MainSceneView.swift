//
//  ContentView.swift
//  Lesson-4.02_ColorizedApp
//
//  Created by Юрий Куринной on 20.11.2023.
//

import SwiftUI



// MARK: - MainSceneView

struct MainSceneView: View {
    
    // MARK: - Wrapped properties
    
    /// Sliders' initial values
    @State private var redSliderValue = Double.random(in: 0...255)
    @State private var greenSliderValue = Double.random(in: 0...255)
    @State private var blueSliderValue = Double.random(in: 0...255)
    
    /// Placement of focus
    @FocusState private var focusedColorViewModel: FocusedColor?
    
    // MARK: - Private properties
    
    /// Color to reflect
    private var colorViewModel: ColorModel {
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
            
            // MARK: Elements
            VStack {
                
                /// Color screen
                ColorScreenView(color: colorViewModel.finalColor)
                
                /// Sliders' group
                SliderGroupSceneView(value: $redSliderValue, color: .red)
                    .focused($focusedColorViewModel, equals: .red)
                SliderGroupSceneView(value: $greenSliderValue, color: .green)
                    .focused($focusedColorViewModel, equals: .green)
                SliderGroupSceneView(value: $blueSliderValue, color: .blue)
                    .focused($focusedColorViewModel, equals: .blue)
                
                Spacer()
            }
            
            // MARK: Toolbar settings
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Button(action: moveUp) {
                        Image(systemName: Constants.upArrow)
                    }
                    Button(action: moveDown) {
                        Image(systemName: Constants.downArrow)
                    }
        
                    Spacer()
                    
                    Button(Constants.doneButton) {
                        hideKeyboard()
                    }
                }
            }
        }
    }
   
    // MARK: - Private methods
    
    // MARK: Hiding keyboard
    private func hideKeyboard() {
        focusedColorViewModel = nil
    }
    
    // MARK: Moving between TextFileds
    /// Up
    private func moveUp() {
        switch focusedColorViewModel {
        case .red:
            focusedColorViewModel = .blue
        case .green:
            focusedColorViewModel = .red
        default:
            focusedColorViewModel = .green
        }
    }
    
    /// Down
    private func moveDown() {
        switch focusedColorViewModel {
        case .red:
            focusedColorViewModel = .green
        case .green:
            focusedColorViewModel = .blue
        default:
            focusedColorViewModel = .red
        }
    }
}

// MARK: - Preview

#Preview {
    MainSceneView()
}
