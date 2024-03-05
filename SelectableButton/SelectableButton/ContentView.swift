//
//  ContentView.swift
//  SelectableButton
//
//  Created by Alejandra Escallada Martínez on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var buttonStates: [[Bool]] = Array(repeating: Array(repeating: false, count: 4), count: 11)
    @State private var showingSecondView = false
    
    private func updateButtonStates(row: Int, index: Int) {
        // Itera sobre cada índice (botones) de cada fila (pregunta)
        buttonStates[row].indices.forEach { buttonIndex in
            buttonStates[row][buttonIndex] = buttonIndex == index
        }
    }
    
    
    var body: some View {
        VStack {
            RectangleView()
            ProgressView()
            ScrollView {
                LazyVStack(spacing: 80) {
                    QuestionView(question: "1. Primera pregunta", buttonStates: $buttonStates[0], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "2. Primera pregunta", buttonStates: $buttonStates[1], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "3. Primera pregunta", buttonStates: $buttonStates[2], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "Primera pregunta", buttonStates: $buttonStates[3], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "Primera pregunta", buttonStates: $buttonStates[4], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "Primera pregunta", buttonStates: $buttonStates[5], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "Primera pregunta", buttonStates: $buttonStates[6], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "Primera pregunta", buttonStates: $buttonStates[7], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "Primera pregunta", buttonStates: $buttonStates[8], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    QuestionView(question: "Primera pregunta", buttonStates: $buttonStates[9], updateButtonStates: { index in
                        self.updateButtonStates(row: 0, index: index)
                        })
                    
                    Button(action: {
                        showingSecondView = true
                    }) {
                        Text("Siguiente")
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    }
                    .padding()
                    .fullScreenCover(isPresented: $showingSecondView) {
                                    RectangleView()
                                }
                }
                .frame(maxWidth: .infinity)
            }
            // Agrega el botón para ir a la segunda vista
                        
        }
        .background {
            Color("Blanco")
                .ignoresSafeArea()
        }
    }
}

#Preview {
    ContentView()
}
