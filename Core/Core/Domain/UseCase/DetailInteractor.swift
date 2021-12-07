//
//  DetailInteractor.swift
//  Core
//
//  Created by candra restu on 05/12/21.
//

import Foundation
import RxSwift

public struct DetailInteractor<Request, Response, R: DetailRepository>: DetailUseCase
where
R.Response == Response,
R.Request == Request {

    private let _repository: R
    
    public init(repository: R) {
        _repository = repository
    }

    public func getDetailGame(_ request: URLRequest) -> Observable<Response> {
        _repository.getDetailGame(request)
    }
    
    public func saveToFavorite(_ game: Request) -> Observable<Bool> {
        _repository.saveToFavorite(game)
    }
    
    public func removeFromFavorite(_ id: Int) -> Observable<Bool> {
        _repository.removeFromFavorite(id)
    }
    
}
