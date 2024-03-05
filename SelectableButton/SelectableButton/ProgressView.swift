//
//  ProgressView.swift
//  SelectableButton
//
//  Created by Alejandra Escallada Martínez on 04/03/24.
//

import SwiftUI

struct ProgressView: View {
    var width: CGFloat = 200
    var height: CGFloat = 20
    var percent: CGFloat = 69

    var body: some View {
        let multiplier = width / 100
        ZStack (alignment: .leading) {
            // Fondo de la barra
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: width, height: height)
                .foregroundColor(Color.black.opacity(0.1))
            
            // Barra azul
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .frame(width: percent * multiplier, height: height)
                .background(
                    LinearGradient(gradient: Gradient(colors: [Color("Azul1"), Color("Azul")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                        .clipShape(RoundedRectangle(cornerRadius: height, style: .continuous))
                )
                .foregroundColor(.clear)
            
        
        }
    }
}

#Preview {
    ProgressView()
}
