//
//  ContentView.swift
//  LaMarzocco
//
//  Created by Abdelrahman Mohamed on 1.07.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(sampleMenuItems, children: \.subMenuItems) { item in

            HStack {

                Image(item.image)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)

                Text(item.name)
                    .font(.system(.title3, design: .rounded))
                    .bold()
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 11 Pro Max")
    }
}
