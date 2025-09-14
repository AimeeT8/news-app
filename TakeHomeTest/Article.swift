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
}
