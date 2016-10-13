//
//  LoginViewController.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class LoginViewController: BaseViewController {
  
  @IBOutlet weak var usernameTextField: UITextField!
  
  @IBOutlet weak var passwordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    self.navigationController?.navigationBar.hidden = true
  }
  
  @IBAction func loginButtonTapped(sender: AnyObject) {
    guard isAllFieldsValid() else {
      return
    }
    var params = [String: String]()
    if let userName = usernameTextField.text {
      params["username"] = userName
    }
    
    if let password = usernameTextField.text {
      params["password"] = password
    }
    
    NetworkHelper<RegisterModel>().APICall(ApiPath.Login, parameters: params, success: { (model) in
      if model.status == 0 {
        AlertViewHelper.showSimpleError(model.message)
      } else {
        self.goToDashboard()
      }
    })
    
  }
  
  func goToDashboard() {
    self.presentViewController(NavigationHelper.getDashboardController(),
                               animated: true,
                               completion: nil)
  }
  
  @IBAction func signupButtonTapped(sender: AnyObject) {
    let vc = SignUpViewController()
    navigationController?.pushViewController(vc, animated: true)
  }
  
  @IBAction func forgotPasswordButtonTapped(sender: AnyObject) {
    
  }
  
  func isAllFieldsValid() -> Bool {
    var isValid = true
    var errorMessage: String = ""
    let showAndReturn : () -> Bool = { Void -> Bool in
      AlertViewHelper.showSimpleError(errorMessage)
      return isValid
    }
    
    if (usernameTextField.text ?? "").isEmpty {
      isValid = false
      errorMessage = "Please enter user name."
      return showAndReturn()
    }
    
    if (passwordTextField.text ?? "").isEmpty {
      isValid = false
      errorMessage = "Please enter password."
      return showAndReturn()
    }
    
    return isValid
  }
  
  
}
