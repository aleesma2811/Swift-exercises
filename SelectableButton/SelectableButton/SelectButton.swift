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
    
    var body: some View {
        ZStack {
            HStack {
                Capsule()
                    .frame(width: 30, height: 30)
                    .foregroundColor(isSelected ? color : .gray)
            } //If the button is selected, the button will be gray
            .onTapGesture {
                isSelected.toggle()
            }
        }
    }
}

#Preview {
    SelectButton(isSelected: .constant(true), color: .blue)
}
