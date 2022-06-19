//
//  Article.swift
//  blogs
//
//  Created by Nikhil on 19/06/2022.
//

import Foundation
struct Article : Identifiable{
    let id: Int
    
    let title: String
    let date: Date
    let detail: String
    let smallImageName: String
    let largeImageName: String
}
