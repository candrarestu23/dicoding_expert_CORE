//
//  File.swift
//  
//
//  Created by candra restu on 27/11/21.
//

import Foundation
import RxSwift

public struct HomeInteractor<Response, Request, R: Repository>: HomeUseCase
where
R.Response == Response,
R.Request == Request {
    public typealias Response = Response
    public typealias Request = Request
    
    private let _repository: R
    
    public init(repository: R) {
        _repository = repository
    }
    
    public func getGames(urlRequest: URLRequest) -> Observable<Response> {
        _repository.getGames(urlRequest: urlRequest as! Request)
    }
}
