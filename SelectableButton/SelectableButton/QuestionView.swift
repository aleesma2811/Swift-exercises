//
//  QuestionView.swift
//  SelectableButton
//
//  Created by Alejandra Escallada Martínez on 02/03/24.
//

import SwiftUI

struct QuestionView: View {
    var question: String
    @Binding var buttonStates: [Bool]
    var updateButtonStates: (Int) -> Void
    var body: some View {
        Text(question)
        HStack {
            Text("En completo \ndesacuerdo")
            ForEach (buttonStates.indices, id: \.self) { index in
                SelectButton(
                    isSelected: self.$buttonStates[index],
                    color: .blue)
            }
            Text("Completamente \nde acuerdo")
        }
    }
}

#Preview {
    QuestionView(question: "", buttonStates: .constant([true, false, false, false]), updateButtonStates: { index in
        print("Button at index \(index) tapped")
        
    })
}
