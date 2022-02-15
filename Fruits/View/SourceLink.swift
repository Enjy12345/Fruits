//
//  SourceLink.swift
//  Fruits
//
//  Created by enjykhaled on 14/02/2022.
//

import SwiftUI

struct SourceLink: View {
    var body: some View {
        GroupBox{
            HStack{
                Text("Content source")
                Spacer()
                Link("Wikipedia" , destination: URL(string: "https://wikipedia.com")!)
                    Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

struct SourceLink_Previews: PreviewProvider {
    static var previews: some View {
        SourceLink()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
