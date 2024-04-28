//
//  UserRegisterViewController.swift
//  JobFinderApp
//
//  Created by Mustafa Ceylan on 28.04.2024.
//

import UIKit

class UserRegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func GetData(_ sender: Any) {
        Task { @MainActor in
            
            do {
                let users = try await UserService().UserLogin(email: "deneme", password: "selam")
                
                for user in users {
                    print(user)
                }
            } catch {
                  // Handle errors appropriately, e.g., display an error message to the user
                }
           
        }
    }
    @IBAction func UserTabbarNavgaitonButton(_ sender: Any) {
        Task { @MainActor in
            
            
            var testUser = User()
            testUser.firstName = "Mustafa"
            testUser.lastName = "Ceylan"
            testUser.email = "deneme"
            testUser.createDate = Date.now
            testUser.cvPath = ""
            testUser.emailVerification = true
            testUser.experienceYear = "1"
            testUser.job = "deneme"
            testUser.password = "asdasd"
            testUser.phoneNumber = "asdasd"
            
             var res = try await UserService().UserRegister(user: testUser)
         
            
            /*
             if let userTabbarNavigationVC = storyboard?.instantiateViewController(withIdentifier: "UserHomeTabbarController") as? UserHomeTabbarController{
             navigationController?.setNavigationBarHidden(true, animated: false)
             navigationController?.pushViewController(userTabbarNavigationVC, animated: true)
             }
             
             */
        }
    }

}
