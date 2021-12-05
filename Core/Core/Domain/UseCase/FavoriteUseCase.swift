//
//  File.swift
//  
//
//  Created by candra restu on 28/11/21.
//

import Foundation
import RxSwift

public protocol FavoriteUseCase {
    associatedtype Response
    
    func getAllFavorite() -> Observable<Response>
}
