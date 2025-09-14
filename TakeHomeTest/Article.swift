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
    
    static let example = Article(id: "1", title: "Apple buys QuickStores", text: "In a shocking new move Apple has bought the QuickStores app. Everyone is happy and celebrating this new billion dollar purchase by Apple.")
}
