//
//  GenreMapper.swift
//  Core
//
//  Created by candra restu on 01/12/21.
//

import Foundation
public protocol GenreMapper {
    associatedtype Response
    associatedtype Domain
    
    func transformResponseToDomain(response: [Response]) -> [Domain]
}
