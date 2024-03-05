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
    @State private var selectedButtonIndex: Int? = nil
    
    var updateButtonStates: (Int) -> Void
    var body: some View {
        
        VStack {
            Text(question)
            
            HStack (spacing: 40) {
                Text("En completo \ndesacuerdo")
                ForEach (buttonStates.indices, id: \.self) { index in
                    SelectButton(
                        isSelected: self.$buttonStates[index],
                        color: .blue)
                }
                Text("Completamente \nde acuerdo")
                    .foregroundColor(Color("AzulLetra"))
            }
        }
    }
}

#Preview {
    QuestionView(question: "", buttonStates: .constant([true, false, false, false]), updateButtonStates: { index in
        print("Button at index \(index) tapped")
        
    })
}
