//
//  DataFetching.swift
//  TakeHomeTest
//
//  Created by Aimee Temple on 2025-09-15.
//

import Foundation


protocol DataFetching: Sendable {
    
    func data(from url: URL) async throws -> (Data, URLResponse)
   
}

extension URLSession: DataFetching { }
