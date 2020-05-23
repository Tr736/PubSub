//
//  PubSubManager.swift
//  PubSub
//
//  Created by Thomas Richardson on 23/05/2020.
//  Copyright © 2020 AmpersandHealth. All rights reserved.
//

import Foundation

struct PubSubManager {
    static let config = PubSubManager()
    let pubSub = PubSub()
    
    func subscribeToMessagesFloat(completion: @escaping (_ message: String) -> Void) {
       let _ = pubSub.sub { (float: Float) in
        completion("\(float) is the temp")
        }
    }
    
    func subscribeToAllMessages<T>(ofType: T.Type) {
      let  _ =  pubSub.sub { (type: T) in
        print("\(type) is of type \(type.self)")
        // TODO: NOT WORKING
        }
    }
}
