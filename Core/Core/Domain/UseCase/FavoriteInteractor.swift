//
//  FavoriteInteractor.swift
//  Core
//
//  Created by candra restu on 04/12/21.
//

import Foundation
import RxSwift

public struct FavoriteInteractor<Response, R: FavRepository>: FavoriteUseCase
where
R.Response == Response {
    
    private let _repository: R
    
    public init(repository: R) {
        _repository = repository
    }
    
    public func getAllFavorite() -> Observable<Response> {
        _repository.getGames()
    }
}
