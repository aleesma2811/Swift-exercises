//
//  ContentView.swift
//  SelectableButton
//
//  Created by Alejandra Escallada Martínez on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var isSelected = false // Button 1
    @State private var isSelected2 = false // Button 2
    @State private var showAlert = false
    @State private var alertText = ""
    
    var body: some View {
        VStack (spacing: 30){
            Text("Is this an important question?")
            HStack {
                SelectButton(
                    isSelected: $isSelected, color: .blue, text: "Yes")
                .onTapGesture {
                    // True or false if pressed
                    isSelected.toggle()
                    
                    // To have just one selected button at a time
                    if isSelected {
                        isSelected2 = false
                    }
                }
                SelectButton(
                    isSelected: $isSelected2, color: .red, text: "Yes")
                .onTapGesture {
                    // True or false if pressed
                    isSelected2.toggle()
                    
                    // To have just one selected button at a time
                    if isSelected2 {
                        isSelected = false
                    }
                }
            }
            Button("Submit") {
                // If button selected, "Correct", else "wrong"
                alertText = isSelected ? "Correct answer" : "Wrong"
                
                // To show the alert with the result
                showAlert.toggle()
            } .alert(alertText, isPresented: $showAlert) {
                Button("Continue") {
                    // Add code here
                }
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
