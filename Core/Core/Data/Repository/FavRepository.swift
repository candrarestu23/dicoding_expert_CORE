//
//  FavRepository.swift
//  Core
//
//  Created by candra restu on 05/12/21.
//

import Foundation
import RxSwift

public protocol FavRepository {
    associatedtype Response
    
    func getGames() -> Observable<Response>
}
