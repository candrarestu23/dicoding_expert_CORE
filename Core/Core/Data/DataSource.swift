//
//  File.swift
//  
//
//  Created by candra restu on 27/11/21.
//

import Foundation
import RxSwift

public protocol DataSource {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> Observable<Response>
}
