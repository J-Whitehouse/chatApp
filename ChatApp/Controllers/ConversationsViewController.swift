//
//  ViewController.swift
//  ChatApp
//
//  Created by Whitehouse, Jarret M on 11/29/21.
//

import UIKit
import FirebaseAuth

class ConversationsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        
    }

    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        validateAuth()
    }
    
    private func validateAuth(){
        if FirebaseAuth.Auth.auth().currentUser == nil {
            let vc = LoginViewController()
            let nav = UINavigationController(rootViewController: vc)
            nav.modalPresentationStyle = .fullScreen
            present(nav, animated: false)
        }
    }
    


}

