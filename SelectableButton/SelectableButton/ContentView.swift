//
//  ContentView.swift
//  SelectableButton
//
//  Created by Alejandra Escallada Martínez on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonStates: [[Bool]] = Array(repeating: Array(repeating: false, count: 4), count: 5)
    
    private func updateButtonStates(row: Int, index: Int) {
        // Itera sobre cada índice (botones) de cada fila (pregunta)
        buttonStates[row].indices.forEach { buttonIndex in
            buttonStates[row][buttonIndex] = buttonIndex == index
        }
    }
    
    
    var body: some View {
        VStack(spacing: 50) {
            ForEach(buttonStates.indices, id: \.self) { row in
                QuestionView(question: "\(row + 1).- Aquí va la preguntita", buttonStates: self.$buttonStates[row]) { index in
                    self.updateButtonStates(row: row, index: index)
                        }
            }
        }
    }
}

#Preview {
    ContentView()
}
