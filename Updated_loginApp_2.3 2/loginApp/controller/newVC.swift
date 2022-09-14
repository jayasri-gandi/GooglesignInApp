//
//  newVC.swift
//  loginApp
//
//  Created by Jayasri  on 14/09/22.
//

import UIKit
import GoogleSignIn


class newVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapGoogleBtn(_ sender: Any) {
        let clientId = "516444324421-7359v5mt4h2akcvqsgcg2vhebsrlc4kb.apps.googleusercontent.com"
        let signInConfig = GIDConfiguration(clientID: clientId)
        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
            guard error == nil else { return }
            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainTabBarVC") as? mainTabBarVC{
             if let users = user?.profile {
                 vc.userId = String("Name: \(users.name)")
                vc.userInfo = String("Email: \(users.email)")
            }
                self.navigationController?.pushViewController(vc, animated: true)
            }
        }

    }
    
}
