//
//  File.swift
//  
//
//  Created by candra restu on 27/11/21.
//

import Foundation
import RxSwift

public protocol LocaleDataSource {
    associatedtype Request
    associatedtype Response
    
    func getGameList() -> Observable<[Response]>
    func addGames(from games: [Request]) -> Observable<Bool>
    func addGame(from game: Request) -> Observable<Bool>
    func getGameDetail() -> Observable<Response>
    func removeGame(from id: Int) -> Observable<Bool>
    func removeAllGames() -> Observable<Bool>
}
