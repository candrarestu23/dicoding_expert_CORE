//
//  File.swift
//  
//
//  Created by candra restu on 28/11/21.
//

import Foundation
import RxSwift

public protocol DetailUseCase {
    associatedtype Request
    associatedtype Response
    
    func getDetailGame(_ request: URLRequest) -> Observable<Response>
    func saveToFavorite(_ game: Request) -> Observable<Bool>
    func removeFromFavorite(_ id: Int) -> Observable<Bool>
}
