//
//  ContentView.swift
//  SwiftUIRecomendations
//
//  Created by Henrique Morbin on 06/11/19.
//  Copyright © 2019 Henrique Morbin. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Recomendados para você")
                .font(.subheadline)
                .bold()
            Text("Restaurantes escolhidos a partir das  suas respostas")
                .font(.footnote)
                .foregroundColor(.gray)
                .fontWeight(.medium)
        }
        .padding(10)
        .background(Color.white)
        .clipped()
        .cornerRadius(4)
        .shadow(color: .shadow, radius: 1, x: 0, y: 0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension Color {
    static var shadow: Color {
        .init(Color.RGBColorSpace.sRGB, white: 0, opacity: 0.3)
    }
}
