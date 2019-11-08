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

        HStack {
            Image("mcdonalds")
                .resizable()
                .padding(12)
                .frame(width: 48, height: 48, alignment: .center)
                .background(Color.red)
                .cornerRadius(24)
            Divider()
            VStack(alignment: .leading, spacing: 16) {
                VStack(alignment: .leading, spacing: 4) {
                    Text("Lorem ipsum")
                        .font(.subheadline)
                        .bold()
                    HStack {
                        Text("★ 5.0")
                            .foregroundColor(Color.yellow)
                            .font(.caption)
                            .bold()
                        Text("· Contemporânea · 1,9 km")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                }
                Text("35-45 min · R$ 9,90")
                    .foregroundColor(.gray)
                    .font(.caption)
            }
            .padding(8)
        }
    }
}

struct HeaderCell: View {
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
