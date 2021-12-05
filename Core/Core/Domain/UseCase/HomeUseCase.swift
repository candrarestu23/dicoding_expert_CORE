//
//  File.swift
//  
//
//  Created by candra restu on 27/11/21.
//

import RxSwift

public protocol HomeUseCase {
    associatedtype Response
    associatedtype Request

    func getGames(urlRequest: URLRequest) -> Observable<Response>
}
