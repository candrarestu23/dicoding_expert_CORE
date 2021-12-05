//
//  File.swift
//  Core
//
//  Created by candra restu on 05/12/21.
//

import Foundation
import RxSwift

public protocol DetailRepository {
    associatedtype Response
    associatedtype Request
    
    func getDetailGame(_ urlRequest: URLRequest) -> Observable<Response>
    func saveToFavorite(_ game: Request) -> Observable<Bool>
    func removeFromFavorite(_ id: Int) -> Observable<Bool>
}
