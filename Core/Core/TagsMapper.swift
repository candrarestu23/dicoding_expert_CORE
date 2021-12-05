//
//  TagsMapper.swift
//  Core
//
//  Created by candra restu on 29/11/21.
//

import Foundation
public protocol TagsMapper {
    associatedtype Response
    associatedtype Domain
    
    func transformResponseToDomain(response: [Response]) -> [Domain]
}
