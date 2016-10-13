//
//  User.swift
//  Lab
//
//  Created by jatin patel on 04/07/16.
//  Copyright © 2016 Tudip. All rights reserved.
//

import Foundation

public class User : RecordTemplate {
  
  var address : String?
  var age : Int?
  var altEmail : String?
  var altMobile : String?
  var area : String?
  var city : String?
  var country : String?
  var createdBy : String?
  var createdOn : String?
  var dob : String?
  var email : String?
  var firstName : String?
  var id : String?
  var lastName : String?
  var middleName : String?
  var mobile : String?
  var password : String?
  var photo : String?
  var pinCode : String?
  var professionId : String?
  var shAddress : String?
  var shArea : String?
  var shCity : String?
  var shCountry : String?
  var shPinCode : String?
  var shState : String?
  var state : String?
  var status : String?
  var tokenKey : String?
  var updatedBy : String?
  var updatedOn : String?
  var username : String?
  
  
  /**
   * Instantiate the instance using the passed dictionary values to set the properties values
   */
  required public init(fromDictionary dictionary: NSDictionary) {
    super.init(fromDictionary: dictionary)
    address = dictionary["address"] as? String
    age = dictionary["age"] as? Int
    altEmail = dictionary["alt_email"] as? String
    altMobile = dictionary["alt_mobile"] as? String
    area = dictionary["area"] as? String
    city = dictionary["city"] as? String
    country = dictionary["country"] as? String
    createdBy = dictionary["created_by"] as? String
    createdOn = dictionary["created_on"] as? String
    dob = dictionary["dob"] as? String
    email = dictionary["email"] as? String
    firstName = dictionary["first_name"] as? String
    id = dictionary["id"] as? String
    lastName = dictionary["last_name"] as? String
    middleName = dictionary["middle_name"] as? String
    mobile = dictionary["mobile"] as? String
    password = dictionary["password"] as? String
    photo = dictionary["photo"] as? String
    pinCode = dictionary["pin_code"] as? String
    professionId = dictionary["profession_id"] as? String
    shAddress = dictionary["sh_address"] as? String
    shArea = dictionary["sh_area"] as? String
    shCity = dictionary["sh_city"] as? String
    shCountry = dictionary["sh_country"] as? String
    shPinCode = dictionary["sh_pin_code"] as? String
    shState = dictionary["sh_state"] as? String
    state = dictionary["state"] as? String
    status = dictionary["status"] as? String
    updatedBy = dictionary["updated_by"] as? String
    updatedOn = dictionary["updated_on"] as? String
    username = dictionary["username"] as? String
    tokenKey = dictionary["username"] as? String
  }
  
  
}