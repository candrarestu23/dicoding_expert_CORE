//
//  GameDetailMapper.swift
//  Core
//
//  Created by candra restu on 05/12/21.
//

import Foundation
public protocol GameDetailMapper {
    associatedtype Response
    associatedtype Entity
    associatedtype Domain
    
    func transformResponseToDomain(response: Response) -> Domain
    func transformDomainToEntity(domain: Domain) -> Entity
}
