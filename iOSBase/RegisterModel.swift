//
//  RegisterModel.swift
//  Lab
//
//  Created by jatin patel on 04/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import Foundation


public class RegisterModel : RecordTemplate {
  
  var status : Int?
  var user : User?
  var message: String?
  var userType: String?
  
  
  /**
   * Instantiate the instance using the passed dictionary values to set the properties values
   */
  required public init(fromDictionary dictionary: NSDictionary){
    super.init(fromDictionary: dictionary)
    status = dictionary["status"] as? Int
    message = dictionary["message"] as? String
    userType = dictionary["user_type"] as? String
    if let userData = dictionary["user"] as? NSDictionary {
      user = User(fromDictionary: userData)
    }
  }
  
}