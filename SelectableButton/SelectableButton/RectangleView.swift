//
//  RectangleView.swift
//  SelectableButton
//
//  Created by Alejandra Escallada Martínez on 04/03/24.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        HStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 227, height: 60)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    .foregroundColor(Color("VerdeClaro"))
                VStack (spacing: -30) {
                    HStack {
                        Capsule()
                            .frame(width: 20, height: 20)
                            .frame(maxWidth: 50, alignment: .leading)
                            .foregroundColor(Color("MoradoAzul"))
                        Capsule()
                            .frame(width: 20, height: 20)
                            .frame(maxWidth: 50, alignment: .leading)
                            .foregroundColor(Color("MoradoAzul"))
                        Capsule()
                            .frame(width: 20, height: 20)
                            .frame(maxWidth: 50, alignment: .leading)
                            .foregroundColor(Color("MoradoAzul"))
                        Capsule()
                            .frame(width: 20, height: 20)
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color("MoradoAzul"))
                    }.padding()
                    HStack {
                        Text("1")
                            .frame(maxWidth: 50, alignment: .leading)
                            .foregroundColor(Color("MoradoAzul"))
                        Text("2")
                            .frame(maxWidth: 50, alignment: .leading)
                            .foregroundColor(Color("MoradoAzul"))
                        Text("3")
                            .frame(maxWidth: 50, alignment: .leading)
                            .foregroundColor(Color("MoradoAzul"))
                        Text("4")
                            .frame(maxWidth: 50, alignment: .leading)
                            .foregroundColor(Color("MoradoAzul"))
                        Spacer()
                    }.padding()
                }
            }.padding()
        }
    }
}

#Preview {
    RectangleView()
}
