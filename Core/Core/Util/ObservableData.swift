//
//  ObservableData.swift
//  Core
//
//  Created by candra restu on 03/12/21.
//

import Foundation
import RxSwift

public class ObservableData<DATA> {
    public var value: DATA? = nil {
        didSet {
            observers.onNext(value)
        }
    }
    
    private let observers = PublishSubject<DATA?>()
    
    public init(_ data: DATA? = nil) {
        self.value = data
    }
    
    public func observe(_ disposeBag: DisposeBag, observer:  @escaping (DATA?) -> Void) {
        observers
            .subscribe(onNext: observer, onError: nil, onCompleted: nil, onDisposed: nil)
            .disposed(by: disposeBag)
    }
}
