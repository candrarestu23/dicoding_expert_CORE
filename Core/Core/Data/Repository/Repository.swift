//
//  File.swift
//  
//
//  Created by candra restu on 27/11/21.
//

import RxSwift

public protocol Repository {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> Observable<Response>
    func getGames(urlRequest: Request) -> Observable<Response>
}
