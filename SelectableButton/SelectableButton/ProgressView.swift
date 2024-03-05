//
//  ProgressView.swift
//  SelectableButton
//
//  Created by Alejandra Escallada Martínez on 04/03/24.
//

import SwiftUI

struct ProgressView: View {
    var body: some View {
        ZStack (alignment: .leading) {
            
            ZStack {
                Capsule().fill(Color.black.opacity(0.08)).frame(width:730 , height: 8)
            }
            Capsule()
                .fill(LinearGradient(gradient: .init(colors: [Color("Azul"), Color("Azul1")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/))
                .frame(width: 730 ,height: 8)
        }
    }
}

#Preview {
    ProgressView()
}
