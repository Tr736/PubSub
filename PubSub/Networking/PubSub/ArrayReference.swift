//
//  ArrayReference.swift
//  PubSub
//
//  Created by Thomas Richardson on 23/05/2020.
//  Copyright © 2020 AmpersandHealth. All rights reserved.
//

import Foundation
class ArrayReference<T: AnyObject> {
    
    private var _array: Array<T>
    
    var array: Array<T> {
        get {
            return _array
        }
    }
    
    init(array: Array<T>) {
        _array = array
    }
    
    func append(_ element: T) {
        _array.append(element)
    }
    
    func remove(_ element: T) {
        let index = _array.firstIndex(where: { (thisElement) -> Bool in
            return thisElement === element
        })
        guard index != nil else {
            return
        }
        _array.remove(at: index!)
    }
}
