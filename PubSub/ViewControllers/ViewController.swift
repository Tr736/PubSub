//
//  ViewController.swift
//  PubSub
//
//  Created by Thomas Richardson on 23/05/2020.
//  Copyright © 2020 AmpersandHealth. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // I extracted and amended the code from https://github.com/MooseMagnet/DeliciousPubSub to create the create this pubsub solution.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.subscribeAndSend()
    }
    
    func subscribeAndSend() {
        PubSubManager.config.subscribeToMessagesFloat(completion: { [unowned self] message in
            print(message)
            DispatchQueue.main.async {
                self.view.backgroundColor = .red
            }
        })
        PubSubManager.config.pubSub.pub(Float(1.0))
        
        // Currently not working and didnt have time to finish
        // PubSubManager.config.subscribeToAllMessages(ofType: Float.self)
        
        DispatchQueue.global().asyncAfter(deadline: DispatchTime.now() + 3) {
            PubSubManager.config.pubSub.dispatchMessages()
        }
    }
}

