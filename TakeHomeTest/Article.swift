//
//  Article.swift
//  TakeHomeTest
//
//  Created by Aimee Temple on 2025-09-14.
//

import Foundation


struct Article: Codable, Hashable, Identifiable {
    let id: String
    var title: String
    var text: String
    
    var description: String
    var thumbnail: URL
    var date: Date
    var author: String
    
    var section: String
    var image: URL
    var url: URL
    
    static let example = Article(id: "1", title: "Apple buys QuickStores", text: "In a shocking new move Apple has bought the QuickStores app. Everyone is happy and celebrating this new billion dollar purchase by Apple.", description: "What a way to spend 2 Billion dollars!", thumbnail: URL(string: "https://hws.dev/img/logo.png")!, date: .now, author: "Not me", section: "Totally legit news!", image: URL(filePath: "https://hws.dev/img/logo.png")!, url: URL(string: "https:hws.dev/news")!)
}
