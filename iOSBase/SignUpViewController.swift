//
//  SignUpViewController.swift
//  Lab
//
//  Created by jatin patel on 03/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
  
  @IBOutlet weak var firstNameTextField: UITextField!
  @IBOutlet weak var lastNameTextField: UITextField!
  @IBOutlet weak var mobileNoTextField: UITextField!
  @IBOutlet weak var emailTextField: UITextField!
  @IBOutlet weak var reEnterPasswordTextField: UITextField!
  @IBOutlet weak var passwordTextField: UITextField!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    
  }
  
  override func viewWillAppear(animated: Bool) {
    super.viewWillAppear(animated)
    self.navigationController?.navigationBar.hidden = false
  }
  
  override func viewWillDisappear(animated: Bool) {
    super.viewWillDisappear(animated)
    self.navigationController?.navigationBar.hidden = true
  }
  
  func onSuccess(model: RegisterModel) {
    var params = [String: String]()
    if let userName = emailTextField.text {
      params["username"] = userName
    }
    
    if let password = passwordTextField.text {
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
    
  }
  
  func isValidAllFields() -> Bool {
    var isValid = true
    var errorMessage: String = ""
    let showAndReturn : () -> Bool = { Void -> Bool in
      AlertViewHelper.showSimpleError(errorMessage)
      return isValid
    }
    
    if (firstNameTextField.text ?? "").isEmpty {
      isValid = false
      errorMessage = "Please enter first name."
      return showAndReturn()
    }
    
    if (lastNameTextField.text ?? "").isEmpty {
      isValid = false
      errorMessage = "Please enter last name."
      return showAndReturn()
    }
    
    if passwordTextField.text != reEnterPasswordTextField.text {
      isValid = false
      errorMessage = "password and re-enter password are not matching."
      return showAndReturn()
    }
    
    if mobileNoTextField.text?.characters.count > 10 || mobileNoTextField.text?.characters.count < 10 {
      isValid = false
      errorMessage = "Please enter valid mobile number"
      return showAndReturn()
    }
    
    return isValid
  }
  
  @IBAction func signupButtonTapped(sender: AnyObject) {
    guard isValidAllFields() else {
      return
    }
    var parameters = [String: String]()
    if let firstName = firstNameTextField.text {
      parameters["first_name"] = firstName
    }
    if let lastName = lastNameTextField.text {
      parameters["last_name"] = lastName
    }
    if let password = passwordTextField.text {
      parameters["password"] = password
    }
    if let email = emailTextField.text {
      parameters["email"] = email
    }
    if let mobile = mobileNoTextField.text {
      parameters["mobile"] = mobile
    }
    NetworkHelper<RegisterModel>().APICall(ApiPath.Register, parameters: parameters, success: { (model) in
      if model.status == 0 {
        AlertViewHelper.showSimpleError(model.message)
        
      } else {
        self.onSuccess(model)
      }
    })
  }
  
}
