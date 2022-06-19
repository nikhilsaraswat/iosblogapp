//
//  NewsCell+Article.swift
//  blogs
//
//  Created by Nikhil on 19/06/2022.
//

import SwiftUI

extension NewsCell {
    init(article: Article) {
        self.init(
            image: Image(article.smallImageName),
            text: Text(article.title),
            detailText: Text(article.detail),
            tertiaryText: Text(String(describing: article.date)),
            largeImage: Image(article.largeImageName)
        )
    }
}

struct NewsCell_Article_Previews: PreviewProvider {
    static var previews: some View {
        NewsCell(article: .airBlock)
            .previewLayout(.sizeThatFits)
    }
}
extension Article {
    static let mocks: [Self] = [.blockChain, .airBlock]
}

