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

    @IBAction func tapPush() {
        let vc = JSQMessagesViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @IBAction func tapPresent() {
        let vc = JSQMessagesViewController()
        present(vc, animated: true, completion: nil)
    }
    @IBAction func tapPresentFullScreen() {
        let vc = JSQMessagesViewController()
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
    }
}

