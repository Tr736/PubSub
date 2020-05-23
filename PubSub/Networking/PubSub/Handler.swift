//
//  Handler.swift
//  PubSub
//
//  Created by Thomas Richardson on 23/05/2020.
//  Copyright © 2020 AmpersandHealth. All rights reserved.
//

import Foundation
class Handler {
    
    let _function: (Any) -> Void
    
    init(handlingFunction: @escaping (Any) -> Void) {
        _function = handlingFunction
    }
    
    func handle(_ argument: Any) {
        _function(argument)
    }
}
