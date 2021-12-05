//
//  LocalMapper.swift
//  Core
//
//  Created by candra restu on 05/12/21.
//

import Foundation
public protocol LocalMapper {
    associatedtype Response
    associatedtype Domain
    
    func transformResponseToDomain(response: Response) -> [Domain]
}
