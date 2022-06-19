//
//  AboutCell.swift
//  blogs
//
//  Created by Nikhil on 19/06/2022.
//

import SwiftUI

struct AboutCell: View {
    let image: Image
    let text: Text
    let detailText: Text
    let tertiaryText: Text
    var body: some View {
        VStack {
            image
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 200.0)
            VStack(alignment: .leading) {
                text
                    .font(.title2)
                    .fontWeight(.bold)
                detailText
                    .foregroundColor(Color.gray)
                    tertiaryText
                }
        }
        
        
    }
}

struct AboutCell_Previews: PreviewProvider {
    static var previews: some View {
        AboutCell(image: Image(systemName: "photo"),
              text: Text("Nikhil Saraswat"),
              detailText: Text("Software Developer and Daa Analyst"),
                  tertiaryText: Text("Tertiary Text")
            )
    }
}
