//
//  ViewController.swift
//  JSQMessagesDemo
//
//  Created by Paulo Lopes on 22/07/2019.
//  Copyright © 2019 Depop. All rights reserved.
//

import UIKit
import JSQMessages

class ViewController: UIViewController {

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let vc = JSQMessagesViewController()
        present(vc, animated: true, completion: nil)
    }
}

