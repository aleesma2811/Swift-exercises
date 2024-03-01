//
//  SelectButton.swift
//  SelectableButton
//
//  Created by Alejandra Escallada Martínez on 29/02/24.
//

import SwiftUI

struct SelectButton: View {
    @Binding var isSelected: Bool
    @State var color: Color
    @State var text: String
    
    var body: some View {
        ZStack {
            Capsule()
                .frame(width: 50, height: 50)
                .foregroundColor(isSelected ? color: .gray) //If the button is selected, the button will be gray
            Text(text)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    SelectButton(isSelected: .constant(false), color: .blue, text: "Option")
}
