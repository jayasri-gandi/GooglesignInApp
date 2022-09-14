//
//  ViewController.swift
//  loginApp
//
//  Created by Jayasri  on 01/09/22.
//

//import UIKit
import GoogleSignIn
import FBSDKLoginKit
import FBSDKCoreKit
import FBSDKLoginKit
import UIKit

class MainVC: UIViewController, LoginButtonDelegate {
    
    func loginButton(_ loginButton: FBLoginButton, didCompleteWith result: LoginManagerLoginResult?, error: Error?) {
        //
    }
    
    func loginButtonDidLogOut(_ loginButton: FBLoginButton) {
        //
    }
    
    var userGoogleemailID:String!
    @IBOutlet var faceBookView:UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func onTapfacebookBtn(_ sender: Any) {
        print("Facebook Taped")
    }
    
//    @IBAction func onTapGoogleBtn(_ sender: Any) {
//
//        let clientId = "516444324421-7359v5mt4h2akcvqsgcg2vhebsrlc4kb.apps.googleusercontent.com"
//        let signInConfig = GIDConfiguration(clientID: clientId)
//        GIDSignIn.sharedInstance.signIn(with: signInConfig, presenting: self) { user, error in
//            guard error == nil else { return }
//            if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "mainTabBarVC") as? mainTabBarVC{
//                if let users = user?.profile {
//                    vc.userId = String("Name: \(users.name)")
//                    vc.userInfo = String("Email: \(users.email)")
//                }
//                self.navigationController?.pushViewController(vc, animated: true)
//            }
//        }
//    }
    
    @IBAction func signUpBtn(_ sender: Any) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "Signup") as? RegisterVC {
        self.navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func loginBtn(_ sender: Any) {
        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "loginVC") as? loginVC {
        self.navigationController?.pushViewController(vc, animated: true)
    }
    }
}

