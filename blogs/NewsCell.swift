//
//  NewsCell.swift
//  blogs
//
//  Created by Nikhil on 19/06/2022.
//

import SwiftUI

struct NewsCell: View {
    let image: Image;
    let text: Text;
    let detailText: Text;
    let tertiaryText: Text;
    let largeImage: Image;
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                image
                    .resizable( resizingMode:.stretch)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: 44.0, height: 44.0)
                VStack(alignment: .leading) {
                    text
                        .font(.title2)
                    .fontWeight(.bold)
                    tertiaryText
                        .foregroundColor(Color.gray)
                }}
                detailText
                largeImage
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(maxHeight: 240.0)
                    .clipped()

        }}
    }

struct NewsCell_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(image: Image(systemName: "photo"),
                 text: Text("Text"),
                 detailText: Text("Detail Text"),
                 tertiaryText: Text("Tertiary Text"),
                 largeImage: Image(systemName: "photo"))
            .previewLayout(.sizeThatFits)
    }
}
